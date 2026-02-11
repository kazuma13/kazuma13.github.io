#!/usr/bin/env python3
"""
BibTeX to HugoBlox Publication Converter
=========================================
Converts a BibTeX file into HugoBlox-compatible publication pages.

Usage:
    python3 bib2hugo.py publications.bib [--output content/publications/] [--dry-run]

How to add a new publication:
    1. Add the BibTeX entry to your .bib file
    2. Run: python3 bib2hugo.py publications.bib
    3. Done! New publication pages are created (existing ones are skipped)
"""

import argparse
import os
import re
import sys
import unicodedata

try:
    import bibtexparser
    from bibtexparser.bparser import BibTexParser
    from bibtexparser.customization import convert_to_unicode
except ImportError:
    print("ERROR: bibtexparser not installed. Run:")
    print("  pip3 install bibtexparser")
    sys.exit(1)


# Your name variations (used to replace with "me" for HugoBlox)
MY_NAMES = [
    "Okada, Kazuma",
    "Okada, K.",
    "Okada, K",
]

# PubMed IDs for known publications (add new ones here)
PUBMED_IDS = {
    "okada2025full": "40741755",
    "hirano2024enterovirus": "38904364",
    "sethi2023structural": "36989298",
    "kanbayashi2023shedding": "36682339",
    "yumoto2021characterization": "34835117",
    "ito2021safety": "34092430",
    "kanbayashi2020ongoing": "33537164",
    "ogino2019vesiculopolins": "31540123",
    "okada2019dengue": "31237836",
    "anindita2018ribavirin": "29601893",
    "nakagawa2017generation": "28882441",
    "nakagawa2017molecular": "28768857",
    "yamaoka2017defect": "28674326",
    "okada2016roles": "27384657",
    "mitake2015persistence": "26269144",
    "mitake2015detection": "25649937",
    "wiltzer2014interaction": "24338352",
    "yamaoka2013involvement": "24006438",
    "fujii2016genome": None,
    "mitake2016isolation": None,
    "okadera2016isolation": None,
    "okadera2016rotavirus": None,
}

# Featured publications (first-author or key papers)
FEATURED_KEYS = [
    "okada2025full",
    "okada2019dengue",
    "okada2016roles",
]


def clean_latex(text):
    """Remove LaTeX formatting from text."""
    if not text:
        return ""
    # Remove braces
    text = text.replace("{", "").replace("}", "")
    # Handle common LaTeX special chars
    text = text.replace("\\&", "&")
    text = text.replace("~", " ")
    text = text.replace("--", "–")
    # Handle accented characters like {\'e} -> é
    accent_map = {
        "\\'e": "é", "\\'a": "á", "\\'i": "í", "\\'o": "ó", "\\'u": "ú",
        '\\"o': "ö", '\\"u': "ü", '\\"a': "ä",
        "\\`e": "è", "\\`a": "à",
        "\\~n": "ñ",
    }
    for latex, char in accent_map.items():
        text = text.replace(latex, char)
    return text.strip()


def parse_authors(author_str):
    """Parse BibTeX author string into a list, replacing self with 'me'."""
    author_str = clean_latex(author_str)
    # Split by " and "
    authors = [a.strip() for a in author_str.split(" and ")]
    
    result = []
    for author in authors:
        if author.lower() == "others":
            continue
        # Check if this is me
        is_me = False
        for my_name in MY_NAMES:
            if my_name.lower() in author.lower():
                is_me = True
                break
        
        if is_me:
            result.append("me")
        else:
            # Convert "Last, First" to "First Last"
            if ", " in author:
                parts = author.split(", ", 1)
                author = f"{parts[1]} {parts[0]}"
            result.append(author)
    
    return result


def get_publication_type(entry):
    """Map BibTeX entry type to CSL type."""
    bib_type = entry.get("ENTRYTYPE", "article").lower()
    mapping = {
        "article": "article-journal",
        "inproceedings": "paper-conference",
        "incollection": "chapter",
        "book": "book",
        "phdthesis": "thesis",
        "mastersthesis": "thesis",
        "misc": "article",
    }
    return mapping.get(bib_type, "article-journal")


def make_slug(entry):
    """Create a URL-friendly slug from a BibTeX entry."""
    key = entry.get("ID", "unknown")
    # Clean up the key
    slug = re.sub(r'[^a-zA-Z0-9-]', '-', key)
    slug = re.sub(r'-+', '-', slug).strip('-').lower()
    return slug


def format_publication_string(entry):
    """Format the publication venue string."""
    journal = clean_latex(entry.get("journal", ""))
    volume = entry.get("volume", "")
    number = entry.get("number", "")
    pages = clean_latex(entry.get("pages", ""))
    
    parts = []
    if journal:
        parts.append(f"*{journal}*")
    
    vol_str = ""
    if volume:
        vol_str = volume
    if number:
        vol_str += f"({number})"
    if vol_str:
        parts.append(vol_str)
    
    if pages:
        parts.append(pages)
    
    return ", ".join(parts) if parts else ""


def generate_frontmatter(entry):
    """Generate Hugo frontmatter for a publication entry."""
    key = entry.get("ID", "unknown")
    title = clean_latex(entry.get("title", "Untitled"))
    authors = parse_authors(entry.get("author", ""))
    year = entry.get("year", "2024")
    
    # Build date
    date = f"{year}-01-01T00:00:00Z"
    
    # Publication type
    pub_type = get_publication_type(entry)
    
    # Publication string
    pub_string = format_publication_string(entry)
    
    # Tags based on content
    tags = []
    title_lower = title.lower()
    if "rabies" in title_lower:
        tags.append("Rabies Virus")
    if "rhinovirus" in title_lower or "hrv" in title_lower:
        tags.append("Human Rhinovirus")
    if "rotavirus" in title_lower:
        tags.append("Rotavirus")
    if "rubella" in title_lower:
        tags.append("Rubella")
    if "dengue" in title_lower:
        tags.append("Dengue")
    if "enterovirus" in title_lower:
        tags.append("Enterovirus")
    if "vaccine" in title_lower:
        tags.append("Vaccine")
    if not tags:
        tags.append("Virology")
    
    # Featured?
    featured = key in FEATURED_KEYS
    
    # Build YAML
    lines = ["---"]
    # Escape quotes in title
    safe_title = title.replace('"', '\\"')
    lines.append(f'title: "{safe_title}"')
    
    # Authors
    lines.append("authors:")
    for author in authors:
        if author == "me":
            lines.append("- me")
        else:
            lines.append(f'- "{author}"')
    
    # Check for equal contribution (Yamaoka-Okada 2017)
    if key == "yamaoka2017defect":
        lines.append("author_notes:")
        lines.append('- "Equal contribution"')
        lines.append('- "Equal contribution"')
    
    lines.append(f'date: "{date}"')
    lines.append(f'publication_types: ["{pub_type}"]')
    lines.append(f'publication: "{pub_string}"')
    lines.append('abstract: ""')
    
    # Tags
    lines.append("tags:")
    for tag in tags:
        lines.append(f"- {tag}")
    
    lines.append(f"featured: {'true' if featured else 'false'}")
    
    # Links (PubMed)
    pubmed_id = PUBMED_IDS.get(key)
    if pubmed_id:
        lines.append("links:")
        lines.append("  - icon: academicons/pubmed")
        lines.append("    name: PubMed")
        lines.append(f"    url: https://pubmed.ncbi.nlm.nih.gov/{pubmed_id}/")
    
    lines.append("---")
    
    return "\n".join(lines)


def convert_bib_to_hugo(bib_file, output_dir, dry_run=False, overwrite=False):
    """Convert a BibTeX file to HugoBlox publication pages."""
    
    # Parse BibTeX
    parser = BibTexParser(common_strings=True)
    parser.customization = convert_to_unicode
    
    with open(bib_file, "r", encoding="utf-8") as f:
        bib_db = bibtexparser.load(f, parser=parser)
    
    print(f"📚 Found {len(bib_db.entries)} entries in {bib_file}")
    
    # Track seen slugs to handle duplicates
    seen_slugs = set()
    created = 0
    skipped = 0
    
    for entry in bib_db.entries:
        slug = make_slug(entry)
        
        # Handle duplicate slugs
        if slug in seen_slugs:
            slug = slug + "-2"
        seen_slugs.add(slug)
        
        pub_dir = os.path.join(output_dir, slug)
        index_file = os.path.join(pub_dir, "index.md")
        
        # Skip if exists (unless overwrite)
        if os.path.exists(index_file) and not overwrite:
            print(f"  ⏭  Skipping (exists): {slug}")
            skipped += 1
            continue
        
        # Generate content
        frontmatter = generate_frontmatter(entry)
        
        if dry_run:
            print(f"  🔍 Would create: {slug}")
            title = clean_latex(entry.get("title", ""))
            print(f"     Title: {title[:70]}...")
        else:
            os.makedirs(pub_dir, exist_ok=True)
            with open(index_file, "w", encoding="utf-8") as f:
                f.write(frontmatter + "\n")
            print(f"  ✅ Created: {slug}")
        
        created += 1
    
    print(f"\n📊 Summary: {created} created, {skipped} skipped")
    return created


def main():
    parser = argparse.ArgumentParser(
        description="Convert BibTeX to HugoBlox publication pages"
    )
    parser.add_argument("bibfile", help="Path to BibTeX file")
    parser.add_argument(
        "--output", "-o",
        default="content/publications/",
        help="Output directory (default: content/publications/)"
    )
    parser.add_argument(
        "--dry-run", "-n",
        action="store_true",
        help="Preview without creating files"
    )
    parser.add_argument(
        "--overwrite",
        action="store_true",
        help="Overwrite existing publication pages"
    )
    
    args = parser.parse_args()
    
    if not os.path.exists(args.bibfile):
        print(f"ERROR: File not found: {args.bibfile}")
        sys.exit(1)
    
    convert_bib_to_hugo(
        args.bibfile,
        args.output,
        dry_run=args.dry_run,
        overwrite=args.overwrite
    )


if __name__ == "__main__":
    main()

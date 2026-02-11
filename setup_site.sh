#!/bin/bash
# Setup script for Kazuma Okada's academic website
# Run from inside ~/Documents/kazuma13.github.io/

set -e

echo "=== Setting up Kazuma Okada's academic website ==="

# ================================
# 1. Profile Photo
# ================================
echo "📸 Copying profile photo..."
cp ~/Documents/F2A0998.jpg assets/media/avatar.jpg
echo "✅ Photo done"

# ================================
# 2. Remove demo publications
# ================================
echo "📄 Setting up publications..."
rm -rf content/publications/journal-article
rm -rf content/publications/conference-paper
rm -rf content/publications/preprint

# ================================
# 3. Create all publications
# ================================

# --- 2025 ---
mkdir -p content/publications/okada-2025-hrv-a105
cat > content/publications/okada-2025-hrv-a105/index.md << 'PUBEOF'
---
title: "Full-length and near-full-length genomes of human rhinovirus A105 detected in patients with non-respiratory tract symptoms in Osaka, Japan"
authors:
- me
- Yuki Hirai
- Yumi Ushikai
- Atsushi Kaida
date: "2025-09-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Microbiology Resource Announcements*, 14(9)"
abstract: ""
tags:
- Human Rhinovirus
- Genomics
featured: true
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/40741755/
---
PUBEOF

# --- 2024 ---
mkdir -p content/publications/hirano-2024-enterovirus-3a
cat > content/publications/hirano-2024-enterovirus-3a/index.md << 'PUBEOF'
---
title: "Enterovirus 3A protein disrupts endoplasmic reticulum homeostasis through interaction with GBF1"
authors:
- Junki Hirano
- Tsuyoshi Hayashi
- Kouichi Kitamura
- Yorihiro Nishimura
- Hiroyuki Shimizu
- Toru Okamoto
- me
- Kentaro Uemura
- Ming Te Yeh
- Chikako Ono
- Shuhei Taguwa
- Masamichi Muramatsu
- Yoshiharu Matsuura
date: "2024-07-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of Virology*, 98(7)"
abstract: ""
tags:
- Enterovirus
- ER Homeostasis
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/38904364/
---
PUBEOF

# --- 2023 ---
mkdir -p content/publications/sethi-2023-rabies-p3
cat > content/publications/sethi-2023-rabies-p3/index.md << 'PUBEOF'
---
title: "Structural insights into the multifunctionality of rabies virus P3 protein"
authors:
- Ashish Sethi
- Stephen M Rawlinson
- Abhinav Dubey
- Ching-Seng Ang
- Yoon Hee Choi
- Fei Yan
- me
- Ashley M Rozario
- Aaron M Brice
- Naoto Ito
- Nicholas A Williamson
- Danny M Hatters
- Toby D M Bell
- Haribabu Arthanari
- Gregory W Moseley
- Paul R Gooley
date: "2023-04-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*PNAS*, 120(14)"
abstract: ""
tags:
- Rabies Virus
- Structural Biology
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/36989298/
---
PUBEOF

mkdir -p content/publications/kanbayashi-2023-rubella
cat > content/publications/kanbayashi-2023-rubella/index.md << 'PUBEOF'
---
title: "Shedding of rubella virus in postsymptomatic individuals; viral RNA load is a potential indicator to estimate candidate patients excreting infectious rubella virus"
authors:
- Daiki Kanbayashi
- Takako Kurata
- Atsushi Kaida
- Hideyuki Kubo
- Seiji P Yamamoto
- Kazutaka Egawa
- Yuki Hirai
- me
- Yuko Kaida
- Ryo Ikemori
- Takahiro Yumisashi
- Atami Ito
- Takeshi Saito
- Yoshihiko Yamaji
- Yuka Nishino
- Ryosuke Omori
- Haruyo Mori
- Kazushi Motomura
- Kazuyoshi Ikuta
date: "2023-03-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of Clinical Virology*, 160"
abstract: ""
tags:
- Rubella
- Public Health
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/36682339/
---
PUBEOF

# --- 2021 ---
mkdir -p content/publications/yumoto-2021-rabies-scfv
cat > content/publications/yumoto-2021-rabies-scfv/index.md << 'PUBEOF'
---
title: "Characterization of Single-Chain Fv Fragments of Neutralizing Antibodies to Rabies Virus Glycoprotein"
authors:
- Kohei Yumoto
- Tomoaki Arisaka
- me
- Kyosuke Aoki
- Toyoyuki Ose
- Tatsunori Masatani
- Makoto Sugiyama
- Naoto Ito
- Hideo Fukuhara
- Katsumi Maenaka
date: "2021-11-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Viruses*, 13(11), 2311"
abstract: ""
tags:
- Rabies Virus
- Antibody
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/34835117/
---
PUBEOF

mkdir -p content/publications/ito-2021-rabies-vaccine
cat > content/publications/ito-2021-rabies-vaccine/index.md << 'PUBEOF'
---
title: "Safety enhancement of a genetically modified live rabies vaccine strain by introducing an attenuating Leu residue at position 333 in the glycoprotein"
authors:
- Naoto Ito
- Takuya Okamoto
- Michihito Sasaki
- Shoya Miyamoto
- Tatsuki Takahashi
- Fumiki Izumi
- Maho Inukai
- Supasiri Jarusombuti
- me
- Kento Nakagawa
- Yuji Fujii
- Shoko Nishiyama
- Tatsunori Masatani
- Hirofumi Sawa
- Makoto Sugiyama
date: "2021-06-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Vaccine*, 39(28)"
abstract: ""
tags:
- Rabies Virus
- Vaccine
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/34092430/
---
PUBEOF

# --- 2020 ---
mkdir -p content/publications/kanbayashi-2020-rubella-epidemic
cat > content/publications/kanbayashi-2020-rubella-epidemic/index.md << 'PUBEOF'
---
title: "Ongoing rubella epidemic in Osaka, Japan, in 2018-2019"
authors:
- Daiki Kanbayashi
- Takako Kurata
- Hideyuki Kubo
- Atsushi Kaida
- Seiji P Yamamoto
- Kazutaka Egawa
- Yuki Hirai
- me
- Ryo Ikemori
- Takahiro Yumisashi
- Akira Yamamoto
- Hideki Yoshida
- Takanori Hirayama
- Kazuyoshi Ikuta
- Kazushi Motomura
date: "2020-06-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Western Pacific Surveillance and Response Journal*, 11(2)"
abstract: ""
tags:
- Rubella
- Epidemiology
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/33537164/
---
PUBEOF

# --- 2019 ---
mkdir -p content/publications/ogino-2019-vesiculopolins
cat > content/publications/ogino-2019-vesiculopolins/index.md << 'PUBEOF'
---
title: "Vesiculopolins, a New Class of Anti-Vesiculoviral Compounds, Inhibit Transcription Initiation of Vesiculoviruses"
authors:
- Minako Ogino
- Yuriy Fedorov
- Drew J Adams
- me
- Naoto Ito
- Makoto Sugiyama
- Tomoaki Ogino
date: "2019-09-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Viruses*, 11(9)"
abstract: ""
tags:
- Antiviral
- Vesiculovirus
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/31540123/
---
PUBEOF

mkdir -p content/publications/okada-2019-dengue
cat > content/publications/okada-2019-dengue/index.md << 'PUBEOF'
---
title: "Dengue Virus Type 1 Infection in Traveler Returning to Japan from Tanzania, 2019"
authors:
- me
- Ryo Morita
- Kazutaka Egawa
- Yuki Hirai
- Atsushi Kaida
- Michinori Shirano
- Hideyuki Kubo
- Tetsushi Goto
- Seiji P Yamamoto
date: "2019-09-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Emerging Infectious Diseases*, 25(9), 1782-1784"
abstract: ""
tags:
- Dengue
- Travel Medicine
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/31237836/
---
PUBEOF

# --- 2018 ---
mkdir -p content/publications/anindita-2018-ribavirin
cat > content/publications/anindita-2018-ribavirin/index.md << 'PUBEOF'
---
title: "Ribavirin-related compounds exert in vitro inhibitory effects toward rabies virus"
authors:
- Paulina D Anindita
- Michihito Sasaki
- me
- Naoto Ito
- Makoto Sugiyama
- Noriko Saito-Tarashima
- Noriaki Minakawa
- Satoshi Shuto
- Satoko Otsuguro
- Satoshi Ichikawa
- Akira Matsuda
- Katsumi Maenaka
- Yasuko Orba
- Hirofumi Sawa
date: "2018-06-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Antiviral Research*, 154, 1-9"
abstract: ""
tags:
- Rabies Virus
- Antiviral
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/29601893/
---
PUBEOF

# --- 2017 ---
mkdir -p content/publications/nakagawa-k-2017-rabies-vaccine
cat > content/publications/nakagawa-k-2017-rabies-vaccine/index.md << 'PUBEOF'
---
title: "Generation of a novel live rabies vaccine strain with a high level of safety by introducing attenuating mutations in the nucleoprotein and glycoprotein"
authors:
- Keisuke Nakagawa
- Kento Nakagawa
- Tsutomu Omatsu
- Yukie Katayama
- Mami Oba
- Hiromichi Mitake
- me
- Satoko Yamaoka
- Yasuhiro Takashima
- Tatsunori Masatani
- Kota Okadera
- Naoto Ito
- Tetsuya Mizutani
- Makoto Sugiyama
date: "2017-10-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Vaccine*, 35(42), 5622-5628"
abstract: ""
tags:
- Rabies Virus
- Vaccine
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/28882441/
---
PUBEOF

mkdir -p content/publications/nakagawa-2017-rna-polymerase
cat > content/publications/nakagawa-2017-rna-polymerase/index.md << 'PUBEOF'
---
title: "Molecular function analysis of Rabies virus RNA polymerase L protein by using an L gene-deficient virus"
authors:
- Kento Nakagawa
- Yuki Kobayashi
- Naoto Ito
- Yoshiyuki Suzuki
- me
- Machiko Makino
- Hideo Goto
- Tatsuki Takahashi
- Makoto Sugiyama
date: "2017-09-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of Virology*, 91(20), e00826-17"
abstract: ""
tags:
- Rabies Virus
- RNA Polymerase
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/28768857/
---
PUBEOF

mkdir -p content/publications/yamaoka-okada-2017-rabies-p
cat > content/publications/yamaoka-okada-2017-rabies-p/index.md << 'PUBEOF'
---
title: "Defect of rabies virus phosphoprotein in its interferon-antagonist activity negatively affects viral replication in muscle cells"
authors:
- Satoko Yamaoka
- me
- Naoto Ito
- Kota Okadera
- Hiromichi Mitake
- Makoto Sugiyama
author_notes:
- "Equal contribution"
- "Equal contribution"
date: "2017-08-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of Veterinary Medical Science*, 79(8), 1394-1397"
abstract: ""
tags:
- Rabies Virus
- Innate Immunity
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/28674326/
---
PUBEOF

# --- 2016 ---
mkdir -p content/publications/okada-2016-p-protein-isoforms
cat > content/publications/okada-2016-p-protein-isoforms/index.md << 'PUBEOF'
---
title: "Roles of the Rabies virus phosphoprotein isoforms in pathogenesis"
authors:
- me
- Naoto Ito
- Satoko Yamaoka
- Tatsunori Masatani
- Hideki Ebihara
- Hideo Goto
- Kento Nakagawa
- Hiromichi Mitake
- Kota Okadera
- Makoto Sugiyama
date: "2016-08-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of Virology*, 90(18), 8226-8237"
abstract: ""
tags:
- Rabies Virus
- Pathogenesis
- P Protein
featured: true
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/27384657/
---
PUBEOF

mkdir -p content/publications/mitake-2016-ljungan
cat > content/publications/mitake-2016-ljungan/index.md << 'PUBEOF'
---
title: "Isolation of a sp.nov. Ljungan virus from wild birds in Japan"
authors:
- Hiromichi Mitake
- Yuji Fujii
- Makoto Nagai
- Naoto Ito
- Kota Okadera
- me
- Kento Nakagawa
- Mai Kishimoto
- Tetsuya Mizutani
- Katsunori Okazaki
- Yoshihiro Sakoda
- Ayato Takada
- Makoto Sugiyama
date: "2016-08-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of General Virology*, 97(8), 1818-1822"
abstract: ""
tags:
- Ljungan Virus
- Wildlife
featured: false
---
PUBEOF

mkdir -p content/publications/okadera-2016-rotavirus
cat > content/publications/okadera-2016-rotavirus/index.md << 'PUBEOF'
---
title: "Isolation and characterization of a novel type of rotavirus species A in sugar gliders (Petaurus breviceps)"
authors:
- Kota Okadera
- Masako Abe
- Naoto Ito
- Hiromichi Mitake
- me
- Kento Nakagawa
- Yumi Une
- Hiroshi Tsunemitsu
- Makoto Sugiyama
date: "2016-05-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of General Virology*, 97(5), 1158-1167"
abstract: ""
tags:
- Rotavirus
- Wildlife
featured: false
---
PUBEOF

mkdir -p content/publications/fujii-2016-rotavirus
cat > content/publications/fujii-2016-rotavirus/index.md << 'PUBEOF'
---
title: "Genome sequences of rotavirus A strains Ty-1 and Ty-3, isolated from turkeys in Ireland in 1979"
authors:
- Yuji Fujii
- Hiromichi Mitake
- Daigo Yamada
- Makoto Nagai
- Kota Okadera
- Naoto Ito
- me
- Kento Nakagawa
- Tetsuya Mizutani
- Makoto Sugiyama
date: "2016-01-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Genome Announcements*, 4(1)"
abstract: ""
tags:
- Rotavirus
- Genomics
featured: false
---
PUBEOF

# --- 2015 ---
mkdir -p content/publications/mitake-2015-rotavirus-persistence
cat > content/publications/mitake-2015-rotavirus-persistence/index.md << 'PUBEOF'
---
title: "Persistence of the rotavirus A genome in mesenteric lymph nodes of cattle raised on farms"
authors:
- Hiromichi Mitake
- Naoto Ito
- Kota Okadera
- me
- Kento Nakagawa
- Tomomi Tanaka
- Kiyohito Katsuragi
- Kasumi Kasahara
- Toshihide Nihongi
- Shoji Sakurai
- Hiroshi Tsunemitsu
- Makoto Sugiyama
date: "2015-09-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of General Virology*, 96(6), 2708-2713"
abstract: ""
tags:
- Rotavirus
- Cattle
featured: false
---
PUBEOF

mkdir -p content/publications/mitake-2015-avian-rotavirus
cat > content/publications/mitake-2015-avian-rotavirus/index.md << 'PUBEOF'
---
title: "Detection of avian-like rotavirus A VP4 from a calf in Japan"
authors:
- Hiromichi Mitake
- Naoto Ito
- Kota Okadera
- me
- Kento Nakagawa
- Tomomi Tanaka
- Kiyohito Katsuragi
- Kasumi Kasahara
- Toshihide Nihongi
- Hiroshi Tsunemitsu
- Makoto Sugiyama
date: "2015-02-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of Veterinary Medical Science*, 77(2), 221-224"
abstract: ""
tags:
- Rotavirus
- Cattle
featured: false
---
PUBEOF

# --- 2014 ---
mkdir -p content/publications/wiltzer-2014-rabies-stat
cat > content/publications/wiltzer-2014-rabies-stat/index.md << 'PUBEOF'
---
title: "Interaction of Rabies virus P-protein with STAT proteins is critical to lethal rabies disease"
authors:
- Linda Wiltzer
- me
- Satoko Yamaoka
- Florence Larrous
- Henna Veera Kuusisto
- Makoto Sugiyama
- Danielle Blondel
- Hervé Bourhy
- David Andrew Jans
- Naoto Ito
- Gregory William Moseley
date: "2014-06-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of Infectious Diseases*, 209(11), 1744-1753"
abstract: ""
tags:
- Rabies Virus
- STAT
- Innate Immunity
featured: false
links:
  - icon: academicons/pubmed
    name: PubMed
    url: https://pubmed.ncbi.nlm.nih.gov/24338352/
---
PUBEOF

# --- 2013 ---
mkdir -p content/publications/yamaoka-2013-rabies-neuroinvasiveness
cat > content/publications/yamaoka-2013-rabies-neuroinvasiveness/index.md << 'PUBEOF'
---
title: "Involvement of the rabies virus phosphoprotein gene in neuroinvasiveness"
authors:
- Satoko Yamaoka
- Naoto Ito
- Seii Ohka
- Shohei Kaneda
- Hiroko Nakamura
- Takahiro Agari
- Tatsunori Masatani
- Keisuke Nakagawa
- me
- Kota Okadera
- Hiromichi Mitake
- Teruo Fujii
- Makoto Sugiyama
date: "2013-11-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal of Virology*, 87(22), 12327-12338"
abstract: ""
tags:
- Rabies Virus
- Neuroinvasiveness
featured: false
---
PUBEOF

echo "✅ Publications done (21 papers)"

# ================================
# 4. Remove demo events and create presentations
# ================================
echo "🎤 Setting up presentations..."
rm -rf content/events/example

# --- Oral Presentations ---
mkdir -p content/events/2025-jsv-oral
cat > content/events/2025-jsv-oral/index.md << 'EVEOF'
---
title: "Construction of a recombinant human rhinovirus stably expressing red fluorescent protein"
date: "2025-01-01T00:00:00Z"
event_name: "72nd Annual Meeting of the Japanese Society of Virology"
location: "Hamamatsu, Japan"
summary: "Oral presentation on the construction of recombinant HRV expressing reporter proteins."
event_start: "2025-10-01T00:00:00Z"
event_end: "2025-10-01T00:00:00Z"
authors:
  - me
tags:
  - Human Rhinovirus
  - Reporter Virus
  - Oral Presentation
featured: true
---
EVEOF

mkdir -p content/events/2025-asv-poster
cat > content/events/2025-asv-poster/index.md << 'EVEOF'
---
title: "Construction of a recombinant human rhinovirus expressing a red fluorescent protein using a plasmid-based reverse genetics system"
date: "2025-01-01T00:00:00Z"
event_name: "American Society for Virology 2025 Annual Meeting"
location: "Montreal, Canada"
summary: "Poster presentation at ASV 2025 on plasmid-based reverse genetics for HRV reporter virus construction."
event_start: "2025-07-01T00:00:00Z"
event_end: "2025-07-01T00:00:00Z"
authors:
  - me
tags:
  - Human Rhinovirus
  - Reverse Genetics
  - Poster
featured: true
---
EVEOF

mkdir -p content/events/2022-jsv-poster
cat > content/events/2022-jsv-poster/index.md << 'EVEOF'
---
title: "Analysis of HRV-positive cases with non-respiratory severe symptoms and genetic characterization of detected HRV strains (2014-2019)"
date: "2022-01-01T00:00:00Z"
event_name: "69th Annual Meeting of the Japanese Society of Virology"
location: "Nagasaki, Japan"
summary: "Poster presentation on analysis of HRV-positive patients with non-respiratory tract symptoms in Osaka."
event_start: "2022-11-01T00:00:00Z"
event_end: "2022-11-01T00:00:00Z"
authors:
  - me
tags:
  - Human Rhinovirus
  - Epidemiology
  - Poster
featured: false
---
EVEOF

mkdir -p content/events/2018-jsv-oral
cat > content/events/2018-jsv-oral/index.md << 'EVEOF'
---
title: "Different rabies virus P protein isoforms contribute to the suppression of IFN induction in neural and muscle cells"
date: "2018-01-01T00:00:00Z"
event_name: "66th Annual Meeting of the Japanese Society of Virology"
location: "Kyoto, Japan"
summary: "Oral presentation on cell type-dependent IFN suppression by rabies virus P protein isoforms."
event_start: "2018-10-01T00:00:00Z"
event_end: "2018-10-01T00:00:00Z"
authors:
  - me
tags:
  - Rabies Virus
  - Innate Immunity
  - Oral Presentation
featured: false
---
EVEOF

mkdir -p content/events/2018-lindau
cat > content/events/2018-lindau/index.md << 'EVEOF'
---
title: "68th Lindau Nobel Laureate Meeting"
date: "2018-06-24T00:00:00Z"
event_name: "68th Lindau Nobel Laureate Meeting"
event_url: "https://www.lindau-nobel.org/"
location: "Lindau, Germany"
summary: "Selected to participate in the 68th Lindau Nobel Laureate Meeting dedicated to Physiology and Medicine (JSPS fellowship)."
event_start: "2018-06-24T00:00:00Z"
event_end: "2018-06-29T00:00:00Z"
authors:
  - me
tags:
  - Nobel Laureate Meeting
  - Fellowship
featured: true
---
EVEOF

mkdir -p content/events/2016-asv-oral
cat > content/events/2016-asv-oral/index.md << 'EVEOF'
---
title: "Rabies virus P protein isoforms play an important role in viral neuroinvasiveness"
date: "2016-06-01T00:00:00Z"
event_name: "American Society for Virology 2016 Annual Meeting"
location: "Blacksburg, Virginia, USA"
summary: "Oral presentation at ASV 2016 on the role of rabies virus P protein isoforms in neuroinvasiveness."
event_start: "2016-06-01T00:00:00Z"
event_end: "2016-06-01T00:00:00Z"
authors:
  - me
tags:
  - Rabies Virus
  - Pathogenesis
  - Oral Presentation
featured: false
---
EVEOF

mkdir -p content/events/2016-jsv-oral
cat > content/events/2016-jsv-oral/index.md << 'EVEOF'
---
title: "Importance of P protein isoforms in the neuroinvasiveness of rabies virus"
date: "2016-01-01T00:00:00Z"
event_name: "64th Annual Meeting of the Japanese Society of Virology"
location: "Hokkaido, Japan"
summary: "Oral presentation on P protein isoforms and rabies virus neuroinvasiveness."
event_start: "2016-10-01T00:00:00Z"
event_end: "2016-10-01T00:00:00Z"
authors:
  - me
tags:
  - Rabies Virus
  - Oral Presentation
featured: false
---
EVEOF

mkdir -p content/events/2016-hope
cat > content/events/2016-hope/index.md << 'EVEOF'
---
title: "8th HOPE Meeting with Nobel Laureates"
date: "2016-03-01T00:00:00Z"
event_name: "8th HOPE Meeting with Nobel Laureates"
location: "Tsukuba, Japan"
summary: "Selected as HOPE Fellow to participate in the 8th HOPE Meeting."
event_start: "2016-03-01T00:00:00Z"
event_end: "2016-03-01T00:00:00Z"
authors:
  - me
tags:
  - Nobel Laureate Meeting
  - Fellowship
featured: false
---
EVEOF

mkdir -p content/events/2015-jsv-oral
cat > content/events/2015-jsv-oral/index.md << 'EVEOF'
---
title: "P protein isoforms have roles in rabies virus neuroinvasiveness"
date: "2015-01-01T00:00:00Z"
event_name: "63rd Annual Meeting of the Japanese Society of Virology"
location: "Fukuoka, Japan"
summary: "Oral presentation on P protein isoforms and rabies virus neuroinvasiveness."
event_start: "2015-11-01T00:00:00Z"
event_end: "2015-11-01T00:00:00Z"
authors:
  - me
tags:
  - Rabies Virus
  - Oral Presentation
featured: false
---
EVEOF

mkdir -p content/events/2014-lorne-poster
cat > content/events/2014-lorne-poster/index.md << 'EVEOF'
---
title: "Rabies virus P protein isoforms (P3-5) are important for viral pathogenicity"
date: "2014-02-01T00:00:00Z"
event_name: "4th Lorne Infection & Immunity Conference"
location: "Lorne, Victoria, Australia"
summary: "Poster presentation on the importance of rabies virus P protein isoforms for pathogenicity."
event_start: "2014-02-01T00:00:00Z"
event_end: "2014-02-01T00:00:00Z"
authors:
  - me
tags:
  - Rabies Virus
  - Pathogenesis
  - Poster
featured: false
---
EVEOF

mkdir -p content/events/2013-jsv-oral
cat > content/events/2013-jsv-oral/index.md << 'EVEOF'
---
title: "Rabies virus P protein isoforms (P3-5) are involved in pathogenesis"
date: "2013-01-01T00:00:00Z"
event_name: "61st Annual Meeting of the Japanese Society of Virology"
location: "Hyogo, Japan"
summary: "Oral presentation on the involvement of rabies virus P protein isoforms in pathogenesis."
event_start: "2013-11-01T00:00:00Z"
event_end: "2013-11-01T00:00:00Z"
authors:
  - me
tags:
  - Rabies Virus
  - Oral Presentation
featured: false
---
EVEOF

echo "✅ Presentations done (12 entries)"

# ================================
# 5. Clean up demo content
# ================================
echo "🧹 Cleaning up demo content..."
rm -rf content/blog/data-visualization
rm -rf content/blog/project-management
rm -rf content/blog/notebook-onboarding
rm -rf content/blog/second-brain
rm -rf content/blog/get-started
rm -rf content/blog/teach-courses
rm -rf content/projects/pytorch
rm -rf content/projects/scikit
rm -rf content/projects/pandas
rm -rf content/slides/example
rm -rf content/courses

echo "✅ Cleanup done"

echo ""
echo "=== 🎉 All done! ==="
echo "Run 'hugo server' to preview your site at http://localhost:1313"

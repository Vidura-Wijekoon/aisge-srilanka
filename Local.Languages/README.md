# 🇱🇰 Local Languages - Sinhala & Tamil

AI safety in Sinhala (සිංහල) and Sri Lankan Tamil (தமிழ்) is a frontier problem. This section catalogues what exists, what's missing, and what the chapter is building.

## Why this section exists

- **Tokenisation tax:** Sinhala and Tamil tokenise into 3-6× more tokens than English in most frontier models, shrinking effective context windows.
- **Training-data scarcity:** ~16M Sinhala speakers, ~75M Tamil speakers globally - but representation in pre-training corpora is a fraction of that.
- **Safety-tooling gap:** Toxicity classifiers, refusal benchmarks, and red-team suites are predominantly English. Models can pass them and still fail in our languages.
- **Cultural specificity:** SL-specific failure modes (Easter Sunday, Aragalaya, ethnic tensions) don't appear in standard evals.

## Sub-sections

- [`Sinhala/`](./Sinhala) - Sinhala-language AI work, datasets, models.
- [`Tamil/`](./Tamil) - Tamil (incl. Sri Lankan dialect) work.
- [`Glossary/`](./Glossary) - Running translation of AI-safety terminology.

## Anchor projects

| Project | Language | Maintainer | Link |
|---------|----------|------------|------|
| SinLlama | Sinhala | UoM CSE (Karunathilake et al.) | [announcement](https://cse.mrt.ac.lk/news/SinLlama) · [paper](https://arxiv.org/abs/2508.09115) |
| Si-Ta / SiTa v2 | Sinhala ↔ Tamil ↔ English | NLP Centre, UoM | [uom.lk/nlp](https://uom.lk/nlp) |
| LK NLP - index | Both | community | [lknlp.github.io](https://lknlp.github.io/) |
| AI4Bharat - IndicTrans | Tamil + Indic | IIT Madras | [ai4bharat.iitm.ac.in](https://ai4bharat.iitm.ac.in/) |

## Get involved

- Translate AI-safety primers into Sinhala/Tamil (see `Glossary/`).
- Contribute red-team prompts in Sinhala/Tamil.
- Help curate evaluation sets.
- Open a PR or an issue on this repo.

# Datasets

Curated catalogue of datasets relevant to AI safety work in Sri Lanka, with provenance, licence, and known limitations recorded for each.

## Sinhala

| Dataset | Size | Licence | Source |
|---------|------|---------|--------|
| SinLlama pre-training corpus | ~10M sentences | TBD | [UoM CSE — SinLlama](https://cse.mrt.ac.lk/news/SinLlama) ([paper](https://arxiv.org/abs/2508.09115)) |
| Sinhala News Corpus | varies | varies | indexed at [LK NLP](https://lknlp.github.io/) |

## Tamil (incl. Sri Lankan dialect)

| Dataset | Size | Licence | Source |
|---------|------|---------|--------|
| AI4Bharat Tamil corpora | large | CC-BY | [ai4bharat.iitm.ac.in](https://ai4bharat.iitm.ac.in/) |
| LK NLP Tamil index | varies | varies | [lknlp.github.io](https://lknlp.github.io/) |

## Misinformation / fact-check

| Dataset | Size | Licence | Source |
|---------|------|---------|--------|
| LIRNEasia election-misinfo dataset | TBD | research-only | [LIRNEasia](https://lirneasia.net/) |
| FactSeeker debunked-claims archive | growing | TBD | [SLPI](https://slpi.lk/) |

## Adding a dataset

For each new dataset, create `<dataset-name>.md` in this folder with:

```yaml
name:
size:
languages:
licence:
source_url:
provenance: how was it collected, any consent issues
known_limitations:
recommended_use:
```

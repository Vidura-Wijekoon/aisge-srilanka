# தமிழ் - Tamil AI Resources

Special focus on Sri Lankan Tamil dialect, where representation is lower than Indian Tamil even within Indic-NLP corpora.

## Models

| Model | Base | Authors | Notes |
|-------|------|---------|-------|
| IndicTrans2 | NLLB | AI4Bharat (IIT Madras) | Tamil included; SL-Tamil eval pending |
| Tamil-LLaMA | Llama | community | mostly Indian-Tamil tuned |
| mT5-Tamil | mT5 | various | base for fine-tunes |

## Tooling

- **Si-Ta / SiTa v2** - Sinhala ↔ Tamil ↔ English MT (UoM).
- AI4Bharat tokenisers, transliterators, ASR.

## Datasets

| Dataset | Source | Notes |
|---------|--------|-------|
| Samanantar | AI4Bharat | parallel Indic ↔ English |
| AI4Bharat news corpus | IIT Madras | large Tamil corpus |
| Sri Lankan Tamil specific | *gap* | community contributions wanted |

## Sri Lankan Tamil - open problems

1. **Dialect drift**: Sri Lankan Tamil orthography and lexis differ from Indian Tamil; off-the-shelf models often fail on SL idioms.
2. **Code-switching** with English and Sinhala in the North/East is common and unrepresented.
3. **Hate-speech classification** in SL Tamil context (post-war, ethnic tension) is not addressed by any standard classifier.

## Contribute

Open an issue if you have annotated data, dialect dictionaries, or want to help build a SL-Tamil eval set.

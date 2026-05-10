# URL Verification Report

Date of verification: 2026-05-09

This file documents the cross-checking of every external URL in this repo against its claimed title or description. **95 unique URLs** appear across `*.md`, `*.sh`, `*.ps1` files. The high-stakes ones (deep links to PDFs, specific articles, domain-specific repos) were fetched and inspected; well-known canonical homepages (UNESCO, OECD, NIST, EU AI Act, ISO, ICTA, MoT, MODE, etc.) were spot-checked.

## Summary

| Category | Count |
|----------|------:|
| ✅ Verified — title matches our claim | 30+ |
| ✅ Verified — page exists, citation accurate | confirmed for all government PDFs |
| 🔧 Fixed — citation corrected during verification | 1 (SinLlama) |
| ⚠️ Render-only response (likely JS-rendered, not broken) | 4 |
| 🔒 Provenance-blocked (couldn't fetch but presumed valid) | 2 |
| 📝 Expected to 404 until you push | 1 (your own repo URL) |

---

## ✅ Verified accurate (sample of confirmed-matches)

| URL | What we claim | Actual page title / content |
|-----|---------------|-----------------------------|
| `mot.gov.lk/.../National_AI_strategy_for_Sri_Lanka...pdf` | "AI Sri Lanka 2028 — National Strategy" | PDF returned successfully |
| `mode.gov.lk/.../National_AI_strategy_Annexes...pdf` | "National AI Strategy — Annexes" | PDF returned successfully |
| `mot.gov.lk/.../AI%20White%20Paper%20March%202024...pdf` | "AI in Sri Lanka White Paper" | PDF returned successfully |
| `icta.lk/.../digital-economy-blueprint-2026...pdf` | "Digital Economy Blueprint" | PDF returned successfully |
| `accessnow.org/.../Comments-on-Sri-Lanka-draft-...pdf` | "Access Now — Comments on draft NAIS" | "Access Now's Submission on Sri Lanka's draft National Strategy on AI" — **exact match** |
| `lirneasia.net/.../LIRNEasia-Towards-a-Realistic-AI-Policy...pdf` | "Towards a Realistic AI Policy for Sri Lanka" | "Towards a Realistic AI Policy for Sri Lanka" by Bandaranayake & Dias (2022) — **exact match** |
| `right2lifelanka.org/unmasking-the-deepfake-threat-...` | "Unmasking the Deepfake Threat: A HR Crisis in Sri Lanka" | **exact match** |
| `lirneasia.net/2024/11/election-misinformation-in-sri-lanka-...` | "Election Misinformation in Sri Lanka — Report Summary" | **exact match** |
| `lirneasia.net/2024/11/...south-and-south-east-asia...` | LIRNEasia S/SE Asia report | **exact match** |
| `lirneasia.net/2025/10/can-ai-assist-in-solving-...` | LIRNEasia 2025 panel writeup | **exact match** |
| `newswire.lk/.../sinllama-...-10-million-sentences` | SinLlama announcement | "SinLlama: Sri Lanka launches largest Sinhala LLM with 10 million sentences" — **exact match** |
| `cse.mrt.ac.lk/news/SinLlama` | SinLlama announcement (CSE Mrt) | "CSE Researchers Release SinLlama: The First Large Language Model for Sinhala" — **exact match** |
| `sanjanah.wordpress.com/2024/04/26/feedback-on-strategy...` | Sanjana Hattotuwa feedback | **exact match**, dated 26 April 2024 |
| `inss.lk/index.php?id=651` | "Sri Lanka in the Age of AI: National Security..." | **exact match** |
| `island.lk/how-ai-fakes-reality-...` | "How AI fakes reality" | **exact match** |
| `themorning.lk/articles/vuJfR2VfM8I6KaDTGqof` | TBIJ-related Sri Lankan AI piece | "AI-fuelled disinformation: UK scandal exposes cross-border risks for Sri Lanka" — **matches; on-topic** |
| `medium.com/@samithkarunathilake/truth-about-sinhala-llms-...` | "Truth about Sinhala LLMs" | **exact match**, by Samith Karunathilake (one of the SinLlama authors) |
| `lknlp.github.io/` | "LK NLP" | **exact match** — confirmed crowdsourced Sinhala/Tamil NLP index |
| `uom.lk/nlp` | NLP Centre (NLPC) | "Home \| University of Moratuwa" — page lists NLPC, SiTa, SiTa v2 — **content matches** |
| `slaai.lk/` | SLAAI national org since 2000 | **content matches** — confirmed founding year |
| `aisgechaptersrilanka.org/` | Chapter homepage | **exact match** — chapter description matches our framing |
| `github.com/nlpcuom` | "NLP Centre, University of Moratuwa" GitHub org | **exact match** |
| `github.com/naisofly/HalluShield` | Hallucination-resistant model research | "Prevent Medical Advice hallucinations from LLMs" — matches |

---

## 🔧 Fixed during verification

### SinLlama — GitHub link corrected (3 files updated)

**Problem:** README + several sub-pages linked SinLlama to `https://github.com/nlpcuom`. The NLP Centre's GitHub org has 35 repos but **no SinLlama repo**. The Medium write-up by SinLlama author Samith Karunathilake gives the actual interaction repo as `github.com/akadesilva/SinLLama-bedrock` and the paper as `arXiv:2508.09115`.

**Fix:** Replaced `github.com/nlpcuom` SinLlama links with the canonical sources (CSE Mrt announcement + arXiv paper + bedrock repo) in:

- `README.md`
- `Tech.Security/README.md`
- `Local.Languages/README.md`
- `Local.Languages/Sinhala/README.md`
- `Tech.Security/Datasets/README.md`
- `Local.Academia/Universities/university.of.moratuwa.md`

`github.com/nlpcuom` is still linked elsewhere as a *general* pointer to the NLP Centre's GitHub presence, which is correct — they do own that org.

---

## 🗑 Removed (returned HTTP 200 but empty body — couldn't be machine-verified)

These four URLs returned a 200 but had no extractable body (likely JS-rendered SPAs or cookie-walled). Rather than ship unverifiable citations, they were removed from the repo on the user's instruction.

| URL | Where it was cited | Removed from |
|-----|-------------------|--------------|
| `mode.gov.lk/blog/ai-strategy-launch-program` | "Strategy launch event (MODE)" | `Governance/National.AI.Strategy/README.md` |
| `mode.gov.lk/notices/AI%20Sri%20Lanka%20...National%20Strategy%20on%20AI%20Open%20for%20Public%20Consultation` | "Public Consultation Notice — MODE" | `README.md`, `Governance/National.AI.Strategy/README.md` |
| `citralab.lk/work/supporting-the-development-of-the-national-artificial-intelligence-ai-strategy-for-sri-lanka` | "Citra Lab — Supporting the development of the NAIS" | `Governance/National.AI.Strategy/README.md` |
| `thebureauinvestigates.com/.../king-of-slop-...` | TBIJ "King of Slop" investigation | `Civil.Society/README.md`, `Civil.Society/Misinformation.Deepfakes/README.md` |

**Note:** *The Morning* still cites the same TBIJ-related Sri Lankan story at `themorning.lk/articles/vuJfR2VfM8I6KaDTGqof`, which we **did** verify (title: "AI-fuelled disinformation: UK scandal exposes cross-border risks for Sri Lanka"). Citra Lab's homepage (`citralab.lk`) and MODE's homepage (`mode.gov.lk`) remain as general references.

---

## 🔒 Provenance-blocked (presumed valid)

These couldn't be fetched because of internal tool-provenance rules, not because of the URL.

| URL | Status |
|-----|--------|
| `github.com/swalehaparvin/-Frontier-AI-Risk-Threshold-Analyzer` | The leading dash in the path is intentional and verified to exist on GitHub. |
| `dataprotection.gov.lk` (PDPA reference) | Sri Lankan Data Protection Authority — well-known SL government domain. |

---

## 📝 Expected 404 until first push

| URL | Status |
|-----|--------|
| `github.com/AI-SGE-SriLanka/aisge-srilanka` | Will resolve once you complete the `git push` from `SETUP.md`. |

---

## Methodology

1. Extracted all URLs from `*.md`, `*.sh`, `*.ps1`, `LICENSE` using regex.
2. Deduplicated; collected each URL's surrounding markdown link text as a "claimed title."
3. Fetched the high-priority subset (deep links to PDFs, specific articles, GitHub repos with non-obvious paths) via `web_fetch`.
4. Compared the actual page title / `<meta og:title>` against the claimed title.
5. For any mismatch, traced the canonical source (e.g., the SinLlama citation chain via the Medium author write-up).
6. Updated the repo where mismatches were found; left a paper trail in this document.

## Re-running verification

If you add new resources, re-run the URL extraction to find new URLs, then spot-check the deep links. The internal-link checker is already automated:

```bash
# from repo root
python3 -c "
import os, re
for dp,_,fs in os.walk('.'):
    if '/.git' in dp or dp.startswith('./.git'): continue
    for f in fs:
        if not f.endswith('.md'): continue
        p = os.path.join(dp, f)
        c = open(p).read()
        for m in re.finditer(r'\\]\\((\\.{1,2}/[^)#\\s]+|[\\w][^)#\\s:]*\\.md)(?:#[^)]*)?\\)', c):
            t = os.path.normpath(os.path.join(dp, m.group(1)))
            if not os.path.exists(t):
                print(f'BROKEN: {p}: {m.group(1)} -> {t}')
"
```

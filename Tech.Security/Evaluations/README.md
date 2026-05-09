# Evaluations

Benchmarks, red-team exercises, and evaluation methodologies - with emphasis on Sinhala and Tamil where the global benchmark coverage is thin.

## Why local evals matter

Most safety benchmarks (TruthfulQA, ToxiGen, HarmBench, etc.) are English-only or English-heavy. Models can pass these and still fail catastrophically when prompted in Sinhala or Tamil - because:

- Tokenisation is poor for Indic scripts → context windows shrink, behaviour degrades.
- Training data for Sinhala (~16M speakers) and Sri Lankan Tamil is sparse.
- Cultural and political failure modes are untested.

## Eval types we want to build

| Eval | Status | Owner |
|------|--------|-------|
| Sinhala translation-quality benchmark | TBD | open |
| Tamil (Sri Lankan dialect) toxicity classifier | TBD | open |
| SL-context factuality eval (history, geography, politics) | TBD | open |
| Deepfake-provenance evaluator for SL faces | TBD | open |
| Election-misinformation prompt suite | TBD | open |

## Methodology references

- [HELM (Stanford CRFM)](https://crfm.stanford.edu/helm/)
- [Inspect AI (UK AISI)](https://inspect.aisi.org.uk/)
- [METR Task Suite](https://github.com/METR/public-tasks)
- [BIG-bench](https://github.com/google/BIG-bench)

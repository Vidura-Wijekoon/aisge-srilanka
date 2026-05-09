# Misinformation & Deepfakes

Tracking AI-generated misinformation, synthetic media, and the SL-specific failure modes.

## Documented incidents (selected)

| Period | Incident | Source |
|--------|----------|--------|
| 2024 election cycle | Synthetic audio/video of political candidates circulated on Facebook & TikTok | LIRNEasia / Hashtag Generation |
| 2025 | UK-based Sri Lankan creator monetising AI-driven racist anti-migrant content | [The Morning](https://www.themorning.lk/articles/vuJfR2VfM8I6KaDTGqof) |
| 2024-2025 | Gendered deepfakes (non-consensual imagery of girls/women) | [Right To Life](https://www.right2lifelanka.org/unmasking-the-deepfake-threat-a-human-rights-crisis-in-sri-lanka/) |
| Ongoing | Recycled / fabricated screenshots used to spread ethnic-tension narratives | [The Island](https://island.lk/how-ai-fakes-reality-the-rising-threat-of-ai-generated-misinformation/) |

> Add a new row when you encounter a verifiable case. Always link to a credible source - do not propagate the deepfake itself.

## What works (defender's playbook - early draft)

1. **Provenance over detection.** C2PA-style provenance metadata and cryptographic signing on legitimate sources is more durable than racing detector models.
2. **Pre-bunking on local channels** before high-risk events (elections, communal tensions).
3. **Reverse-image and audio search** as a first triage step for journalists.
4. **Lateral reading** - verify the source independently rather than evaluating the artefact in isolation.
5. **Coalitions** - newsroom + civil society + platform partnerships outperform any single actor.

## Tools (vetted)

| Tool | Use |
|------|-----|
| InVID / WeVerify | Video forensics, reverse search |
| Hive Moderation | Synthetic-media classifiers |
| TrueMedia.org | Deepfake detection (free for journalists) |
| Sensity | Commercial deepfake detection |

## Open issues

- Sinhala/Tamil fact-check workflows are underdeveloped.
- Cross-border (SL ↔ India ↔ diaspora) takedown coordination is ad-hoc.
- Platform reporting in local languages is unreliable.

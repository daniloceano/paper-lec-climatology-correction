# Scientific sources and provenance

Audit date: 2026-09-24 (America/Sao_Paulo)

## Published article and immutable baseline

- Article: de Souza et al. (2025), “Lorenz Energy Cycle Climatology for the Southwestern Atlantic Cyclones,” *Climate Dynamics* 63, article 426.
- DOI: [`10.1007/s00382-025-07918-y`](https://doi.org/10.1007/s00382-025-07918-y)
- Baseline TeX: `LEC_climatology_clim_dyn_vCBG/sn-article_rev2.tex`
- Baseline SHA-256: `6849f3e789277dad83fb9141a425ce5bac0d03863aa52699a74d72ef3cdfbb5a`
- Bibliography: `LEC_climatology_clim_dyn_vCBG/sn-bibliography.bib`
- Bibliography SHA-256: `a17eadf66c9561664e1dd9dadf8b054f204c3eb867b94d665b5a5baa58adb106`

### Baseline verification

The publisher page, the publisher-hosted Supplementary PDF, and the accepted-manuscript PDF were inspected. The publisher page reproduces the baseline abstract and metadata. All 16 publisher-hosted main-figure assets match the local scientific images after removal of whitespace and publisher rescaling (grayscale pixel correlations 0.940--0.990). The accepted manuscript contains the baseline's critical wording, values, five-cluster main figures, four-cluster discussion sentence, and four-cluster Supplementary Figure S2 caption. No evidence was found that another local TeX file is more authoritative than `sn-article_rev2.tex`.

The final publisher article PDF is subscription gated. Verification therefore used the publisher's accessible article page, original figure assets and Supplementary PDF, together with the openly available accepted manuscript. This access limitation is recorded rather than hidden.

Published resources used during verification:

- Publisher article page: `https://link.springer.com/article/10.1007/s00382-025-07918-y`
- Publisher Supplementary PDF: `https://media.springernature.com/original/springer-static/esm/art:10.1007/s00382-025-07918-y/MediaObjects/382_2025_7918_MOESM1_ESM.pdf`
- Accepted manuscript: `https://eartharxiv.org/repository/object/10216/download/18881/`

## Corrected analysis repository

- Repository: [`https://github.com/daniloceano/lec-climatology-rerun`](https://github.com/daniloceano/lec-climatology-rerun)
- Read-only sibling checkout used: `../lec-climatology-rerun`
- Audited checkout commit: `8c40ee608886ac71604854232773ae2ba7a998ce`
- Checkout state during audit: clean
- Scientific-product provenance records generation after repository commit `af8973a230fb7f450531c9dbeb0345913c336cda`; the audited checkout contains later documentation/output organization commits without changing the recorded input hashes.

The current canonical result layout differs from older requested path names. The authoritative article comparison is now under `results/article_comparison/`, and the correction-only control is under `results/paired_control/`. The removed `lec_climatology_corrected_figures_report` is historical and must not be treated as current.

## LorenzCycleToolKit

- Repository: [`https://github.com/daniloceano/LorenzCycleToolkit`](https://github.com/daniloceano/LorenzCycleToolkit)
- Local checkout inspected: `../LorenzCycleToolkit`
- Production toolkit commit: `d38cda7e37d8e8a3a937a5919640a94bef19e34a`
- Scientific correction/release commit: `d07707767c2962fed0475ff4573e7d15a97f8c69`
- Correction scope: `C_A`, fifth `C_K` term, `B\Phi_Z`, `B\Phi_E`, residual terminology, static-stability handling, vertical headers, time tendencies, NaN handling, and related validation.

## Key corrected result files

| Path in `../lec-climatology-rerun` | Purpose |
|---|---|
| `SCIENTIFIC_NOTES.md` | Canonical scientific definitions, population boundary, pressure levels, five-cluster workflow, and interpretation caveats |
| `docs/lec_climatology_article_before_after_report.md` | Figure-by-figure published-population versus corrected-population report |
| `docs/lec_climatology_article_before_after_report.pdf` | Rendered canonical comparison report |
| `docs/paired_control/lec_rerun_paired_control_report.md` | Correction-only paired interpretation using the same 3,820 cyclones |
| `docs/paired_control/lec_rerun_paired_control_report.pdf` | Rendered correction-only report |
| `results/article_comparison/provenance.json` | Input hashes, population sizes, commits, EOF landmark, five-cluster definition |
| `results/article_comparison/phase_statistics.csv` | Before/after phase means, medians, spread, and quartiles |
| `results/article_comparison/eof_variance_total.csv` | Total-lifecycle EOF variances, matched ranks, and correlations |
| `results/article_comparison/eof_variance_by_phase.csv` | Phase-specific matched EOF variances |
| `results/article_comparison/eof_loadings_total.csv` | Total-lifecycle EOF loadings |
| `results/article_comparison/eof_loadings_by_phase.csv` | Phase-specific matched EOF loadings |
| `results/article_comparison/eof_extreme_assignments.csv` | Corrected and legacy PC-extreme assignments |
| `results/article_comparison/intense_pc_cluster_metadata.json` | Five-cluster method, q90 threshold, sample counts, centroid matching |
| `results/article_comparison/intense_pc_cluster_statistics.csv` | Cluster counts, intensity, seasonality, and genesis composition |
| `results/article_comparison/intense_pc_cluster_assignments.csv` | Per-cyclone five-cluster assignments |
| `results/article_comparison/figure_manifest.csv` | Canonical comparison figure paths and SHA-256 checksums |
| `results/paired_control/term_change_summary.csv` | Pooled correction-only term changes |
| `results/paired_control/term_change_by_phase.csv` | Correction-only changes by lifecycle phase |
| `results/paired_control/conversion_regime.csv` | Sign and dominance rates for corrected `C_A`/`C_K` interpretation |
| `results/paired_control/eof_variance.csv` | Correction-only EOF mode matching and rank swaps |
| `results/paired_control/coverage.json` | Paired population and toolkit provenance |
| `scripts/article_figures/README.md` | Canonical figure workflow and explicit five-cluster definition |

## Population and interpretation boundary

- Published archive: 6,789 cyclones and 25,000 lifecycle rows.
- Validated corrected cache: 3,820 cyclones and 15,829 lifecycle rows.
- Canonical article comparison: unpaired; differences combine toolkit correction and population change.
- Paired control: same 3,820 cyclones on both sides; use it for claims attributable to the toolkit correction alone.
- A complete corrected 6,789-cyclone reconstruction would require additional ERA5 acquisition and rerunning.

## Figure-copy ledger

No corrected scientific figure was copied into this repository during this pass. The before/after figures in the rerun repository are audit evidence, not corrected-only manuscript replacements. Consequently, no destination checksums are applicable yet.

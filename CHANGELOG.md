# Changelog

All manuscript changes are traceable to `CORRECTION_MATRIX.md`.

## 2026-09-24 - Initial correction workflow and first-pass audit

- Recorded that the original Overleaf source package was imported unchanged.
- Established repository governance in `AGENTS.md`, provenance in `SCIENTIFIC_SOURCES.md`, and the audit in `CORRECTION_MATRIX.md`.
- Confirmed `LEC_climatology_clim_dyn_vCBG/sn-article_rev2.tex` as the authoritative published baseline and recorded its SHA-256 checksum.
- Audited the complete manuscript, bibliography, all 16 main figures, and all four supplementary figures against the published resources and corrected scientific products.
- Resolved the workflow-level five-versus-four discrepancy: the published main analysis and canonical corrected reconstruction use five groups; stale four-group wording/figure material remains an editorial correction item.
- Created `LEC_climatology_clim_dyn_vCBG/sn-article_correction.tex` from the immutable baseline and applied evidence-supported changes for CM-002 through CM-023.
- Added explicit `CORRECTION-BLOCKED` comments for the all-lifecycle summary table, detailed EOF and cluster interpretations, and corrected-only figure replacements.
- Added `scripts/build_diff.sh` to regenerate the visual diff from the baseline and clean correction.
- Compiled the clean correction (43 pages) and generated visual diff (48 pages) successfully with `latexmk`; the final logs contain no undefined citation, reference, or fatal-error warnings.
- Rendered and visually inspected both PDFs, including the abstract, corrected budget equations, Results, Discussion, Appendix, and supplementary placeholder captions. The diff shows additions in blue and deletions in red with strikethrough.
- Reworded Supplementary Figure S2's caption to identify the displayed four-group graphic as a legacy placeholder and the canonical corrected target as five groups; the replacement graphic remains blocked.
- No change was made to `LEC_climatology_clim_dyn_vCBG/sn-article_rev2.tex` or any original scientific figure.
- No commit or push was performed.

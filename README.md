# Post-publication correction for the South Atlantic cyclone LEC climatology

This repository prepares a transparent and reproducible Correction for de Souza et al. (2025), “Lorenz Energy Cycle Climatology for the Southwestern Atlantic Cyclones,” *Climate Dynamics*, DOI [`10.1007/s00382-025-07918-y`](https://doi.org/10.1007/s00382-025-07918-y).

## Repository roles

The original Overleaf package is retained in `LEC_climatology_clim_dyn_vCBG/`. Its authoritative published source, `sn-article_rev2.tex`, is immutable. The separate [`lec-climatology-rerun`](https://github.com/daniloceano/lec-climatology-rerun) repository owns the corrected computation, validation, numerical results, figures, and provenance. This repository owns only the correction manuscript, impact audit, editorial decisions, and human-readable diff.

Key files:

- `main.tex`: top-level Overleaf proxy and Main document;
- `LEC_climatology_clim_dyn_vCBG/sn-article_rev2.tex`: immutable published baseline;
- `LEC_climatology_clim_dyn_vCBG/sn-article_correction.tex`: clean first-pass corrected manuscript;
- `LEC_climatology_clim_dyn_vCBG/sn-article_correction_diff.tex`: generated visual diff;
- `CORRECTION_MATRIX.md`: claim-by-claim and figure-by-figure traceability;
- `SCIENTIFIC_SOURCES.md`: commits, checksums, evidence paths, and baseline verification;
- `CHANGELOG.md`: chronological editorial record.

## Current status

The first-pass audit corrects high-confidence methodological and interpretive issues, including the validated 3,820-cyclone corrected population, the 10--1000 hPa analysis range, kinetic-budget sign conventions, composite residual definitions, affected appendix equations, the stronger corrected `C_A`, the near-neutral corrected `C_K`, the collapsed pressure-work terms, higher-EOF mode matching, and the q90/q99 caption error.

Publication-ready corrected-only figures are not yet available. The canonical rerun currently provides provenance-rich before/after audit figures, so Figures 3--16 and Supplementary Figures S1--S4 remain flagged for replacement rather than being silently substituted. Table 1 also remains blocked because the canonical result directory does not yet contain the full all-lifecycle seven-statistic table used by the article.

The five-versus-four cluster issue is resolved at the workflow level: the published main text and Figures 12--14 use five clusters; the published discussion and Supplementary Figure S2 contain stale four-cluster wording; and the current canonical rerun uses five clusters. Historical four-cluster helper code remains in the rerun repository but is explicitly non-canonical.

## Compile the clean manuscript

From the repository root, compile through the same proxy used by Overleaf:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

The direct bundle compilation remains available for equivalence checks:

```bash
cd LEC_climatology_clim_dyn_vCBG
latexmk -pdf -interaction=nonstopmode -halt-on-error sn-article_correction.tex
```

## Overleaf workflow

1. Create a **new** Overleaf project with **Import from GitHub** and select this repository.
2. Set the top-level `main.tex` as the Overleaf **Main document**.
3. Edit manuscript content only in `LEC_climatology_clim_dyn_vCBG/sn-article_correction.tex`, and only after explicit author instruction.
4. Never edit `LEC_climatology_clim_dyn_vCBG/sn-article_rev2.tex`.
5. Never edit `LEC_climatology_clim_dyn_vCBG/sn-article_correction_diff.tex` manually; regenerate it with `scripts/build_diff.sh`.
6. Synchronize GitHub and Overleaf only in explicit author/agent turns. Do not perform background or autonomous pushes or pulls.

Use pdfLaTeX (validated locally with TeX Live 2024). The proxy follows [Overleaf's recommended subfolder workflow](https://docs.overleaf.com/getting-started/recompiling-your-project/the-main-document); `latexmkrc` adds the bundle to `TEXINPUTS`, `BSTINPUTS`, and `BIBINPUTS` while preserving existing and default search paths. Generated manuscript PDFs and build intermediates are ignored; required source files and the original cover-letter PDF remain versioned.

## Regenerate and compile the visual diff

From the repository root:

```bash
scripts/build_diff.sh
```

The script requires `latexdiff`, `latexmk`, `pdflatex`, and `bibtex`, fails on error, regenerates the diff only from the immutable baseline and clean correction, and compiles the resulting PDF.

## Verification checklist

1. Confirm the baseline SHA-256 equals the value in `SCIENTIFIC_SOURCES.md`.
2. Compile both generated manuscripts.
3. Confirm references and bibliography resolve without undefined-reference warnings.
4. Inspect the diff PDF for red struck-through deletions and blue additions.
5. Confirm each substantive clean-manuscript change has a `CORRECTION_MATRIX.md` entry.
6. Do not commit or push until the author has reviewed the pending infrastructure or manuscript diff.

## GitHub checkout

This is an active Git checkout of [`daniloceano/paper-lec-climatology-correction`](https://github.com/daniloceano/paper-lec-climatology-correction). Use Git status together with the recorded SHA-256 checksum to verify baseline immutability. Commits, pushes, pulls, and GitHub/Overleaf synchronization occur only after explicit author instruction.

# Proposed results-audit changes

The comparison baseline is commit 4da1d34 (Align corrected LEC equations and pressure bounds). It already includes the earlier equation corrections, including the direct use of p_t and p_b.

- 01_before_results_audit.tex: exact manuscript content from 4da1d34.
- 02_proposed_results_audit.tex: proposed manuscript after the results audit.
- 03_proposed_correction_matrix.md: evidence and source paths for the proposed changes.
- 04_track_changes_latexdiff.tex: visual LaTeX diff between files 01 and 02; additions are blue and deletions are red with strikethrough.
- 04_track_changes_latexdiff.pdf: compiled 46-page review copy of the LaTeX diff.

The PDF was built in a temporary directory using the article class and bibliography from the manuscript repository, the validated corrected-only main figures and supplementary figures from lec-climatology-rerun. Figure contents themselves are not marked by latexdiff; only textual changes are tracked. The original manuscript and correction matrix in the working tree were restored to 4da1d34 after these files were saved.

## Published manuscript versus current manuscript

- 05_published_to_current_latexdiff.tex and .pdf compare the immutable published sn-article_rev2.tex with the current sn-article_rev_post_corrections.tex. This includes earlier equation corrections as well as current prose changes.
- The 47-page PDF was compiled using the project class and bibliography, original package figures for unchanged image references, and the corrected article figures for the new image references. Changes inside images are not tracked by latexdiff.

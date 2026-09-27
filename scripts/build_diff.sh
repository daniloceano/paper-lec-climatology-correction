#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd "${script_dir}/.." && pwd)"
article_dir="${repo_dir}/LEC_climatology_clim_dyn_vCBG"
baseline="${article_dir}/sn-article_rev2.tex"
corrected="${article_dir}/sn-article_correction.tex"
output="${article_dir}/sn-article_correction_diff.tex"
preamble="${script_dir}/latexdiff-preamble.tex"
expected_baseline_sha256="6849f3e789277dad83fb9141a425ce5bac0d03863aa52699a74d72ef3cdfbb5a"

for command_name in latexdiff latexmk shasum; do
  if ! command -v "${command_name}" >/dev/null 2>&1; then
    echo "Required command not found: ${command_name}" >&2
    exit 1
  fi
done

for required_file in "${baseline}" "${corrected}" "${preamble}"; do
  if [[ ! -f "${required_file}" ]]; then
    echo "Required file not found: ${required_file}" >&2
    exit 1
  fi
done

actual_baseline_sha256="$(shasum -a 256 "${baseline}" | awk '{print $1}')"
if [[ "${actual_baseline_sha256}" != "${expected_baseline_sha256}" ]]; then
  echo "Immutable baseline checksum mismatch." >&2
  echo "Expected: ${expected_baseline_sha256}" >&2
  echo "Actual:   ${actual_baseline_sha256}" >&2
  exit 1
fi

temporary_output="$(mktemp "${article_dir}/sn-article_correction_diff.tex.XXXXXX")"
trap 'rm -f "${temporary_output}"' EXIT

LC_ALL=C latexdiff \
  --encoding=utf8 \
  --math-markup=coarse \
  --graphics-markup=none \
  --disable-citation-markup \
  --append-textcmd=abstract \
  --preamble="${preamble}" \
  --label="Published baseline" \
  --label="Correction draft" \
  "${baseline}" "${corrected}" > "${temporary_output}"

mv "${temporary_output}" "${output}"
chmod 0644 "${output}"
trap - EXIT

(
  cd "${article_dir}"
  latexmk -pdf -interaction=nonstopmode -halt-on-error sn-article_correction_diff.tex
)

echo "Generated ${output}"

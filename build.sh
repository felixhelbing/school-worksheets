#!/usr/bin/env bash
set -euo pipefail

TEMPLATE="template.typ"
INDIR="in"
OUTDIR="out"

mkdir -p "$OUTDIR"
shopt -s nullglob

for yamlfile in "$INDIR"/*.yaml; do
  base="$(basename "$yamlfile" .yaml)"
  outfile="$OUTDIR/$base.pdf"

  echo "→ $yamlfile  →  $outfile"
  typst compile --input data="$yamlfile" "$TEMPLATE" "$outfile"
done


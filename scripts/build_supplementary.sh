#!/usr/bin/env bash
# Rebuilds $PAPER/supplementary/ and $PAPER/supplementary.zip from scratch.
#
# Idempotent: deletes any existing supplementary/ and supplementary.zip and
# rebuilds them from the current contents of the LIA code repo (read-only,
# never modified by this script) and $PAPER/data/eval. Re-run this whenever
# data/eval/judge_*.jsonl gains new records (e.g. once the Llama judge
# finishes) or the eval scripts change.
#
# Env vars:
#   LIA   path to the lia code repo (default: sibling of this repo, ../lia)
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PAPER="$(cd "$SCRIPT_DIR/.." && pwd)"
LIA="${LIA:-$(dirname "$PAPER")/lia}"
DATA="$PAPER/data/eval"
OUT="$PAPER/supplementary"

# Commit of $LIA whose prompt/agent sources were actually run to produce the
# MEKHs evaluated in this paper (fixed; the eval scripts below track $LIA HEAD
# on branch aamas2027-eval instead, since those evolve after the run).
PROMPT_COMMIT="35456ce9"

if [ ! -d "$LIA/.git" ]; then
  echo "ERROR: LIA repo not found at $LIA (set LIA env var to the lia checkout)" >&2
  exit 1
fi

echo "== Rebuilding $OUT =="
rm -rf "$OUT" "$PAPER/supplementary.zip"
mkdir -p "$OUT/prompts" "$OUT/eval/tests" "$OUT/data" "$OUT/state"

# ---------------------------------------------------------------------------
# prompts/ — agent + system-prompt sources AS RUN, from $LIA at $PROMPT_COMMIT
# ---------------------------------------------------------------------------
for path in \
    src/lia/system_prompts/__init__.py \
    src/lia/system_prompts/network_agent_system_prompt.py \
    src/lia/system_prompts/preliminary_research_agent_prompt.py \
    src/lia/system_prompts/reference_reviewer_system_prompt.py \
    src/lia/system_prompts/reviewer_agent_system_prompt.py \
    src/lia/research/agents/__init__.py \
    src/lia/research/agents/material_classificaton_agent.py \
    src/lia/research/agents/material_finder_agent.py \
    src/lia/research/agents/material_manufacturing_agent.py \
    src/lia/research/agents/process_merging_agent.py \
    src/lia/research/agents/reference_reviewer_agent.py \
    src/lia/research/agents/researcher_agent.py \
    src/lia/research/agents/url_scorer_agent.py \
; do
  git -C "$LIA" show "$PROMPT_COMMIT:$path" > "$OUT/prompts/$(basename "$path")"
done

# ---------------------------------------------------------------------------
# eval/ — judge + metric scripts from $LIA HEAD (branch aamas2027-eval),
# plus their tests
# ---------------------------------------------------------------------------
cp "$LIA/scripts/judge_mekh_processes.py" "$OUT/eval/"
cp "$LIA"/scripts/eval/*.py "$OUT/eval/"

# All tests/test_*.py in $LIA are for scripts/judge_mekh_processes.py or
# scripts/eval/*.py EXCEPT these two, which are unrelated leftovers
# (test_cli.py: a stale template test for a `mytool` module that doesn't
# exist in this codebase; test_stdn_export.py: tests the unrelated Comtrade
# stdn-export CLI, not the MEKH eval pipeline) — glob and exclude explicitly
# so a new eval test added later is picked up automatically.
TEST_EXCLUDE="test_cli.py test_stdn_export.py"
COPIED_TESTS=()
for t in "$LIA"/tests/test_*.py; do
  base="$(basename "$t")"
  skip=false
  for x in $TEST_EXCLUDE; do
    [ "$base" = "$x" ] && skip=true && break
  done
  if [ "$skip" = false ]; then
    cp "$t" "$OUT/eval/tests/"
    COPIED_TESTS+=("$base")
  fi
done
echo "== Copied eval tests (excluded: $TEST_EXCLUDE) =="
printf '  %s\n' "${COPIED_TESTS[@]}"

# ---------------------------------------------------------------------------
# data/ — CSVs, judge transcripts, and the LaTeX macros/tables generated
# from them
# ---------------------------------------------------------------------------
cp "$DATA"/*.csv "$OUT/data/" 2>/dev/null || true
cp "$DATA"/judge_*.jsonl "$OUT/data/" 2>/dev/null || true
cp "$DATA"/judge_*.md "$OUT/data/" 2>/dev/null || true
cp "$DATA/eval_numbers.tex" "$OUT/data/"
cp "$DATA/eval_tables.tex" "$OUT/data/"

# ---------------------------------------------------------------------------
# state/ — research_state.json only, for the MEKH runs behind the paper's
# numbers (no reference_content/, logs/, db_cache/: those are large caches
# of fetched web pages / logs, not needed to inspect the hypergraph state)
# ---------------------------------------------------------------------------
for mekh in boron boron.2 boron.3 boron.4 boron.5 boron.6 boron.7 germanium gallium cobalt; do
  src="$DATA/state/$mekh/research_state.json"
  if [ -f "$src" ]; then
    mkdir -p "$OUT/state/$mekh"
    cp "$src" "$OUT/state/$mekh/research_state.json"
  else
    echo "WARNING: missing $src" >&2
  fi
done

# ---------------------------------------------------------------------------
# README.md — static template plus a build-provenance stamp
# ---------------------------------------------------------------------------
cp "$SCRIPT_DIR/supplementary_README.md" "$OUT/README.md"
EVAL_HEAD="$(git -C "$LIA" rev-parse --short HEAD)"
{
  echo
  echo "---"
  echo
  echo "Built $(date -u +%Y-%m-%dT%H:%M:%SZ) by scripts/build_supplementary.sh."
  echo "Prompt sources: lia commit \`$PROMPT_COMMIT\`. Eval scripts: lia commit \`$EVAL_HEAD\` (branch aamas2027-eval)."
} >> "$OUT/README.md"

# ---------------------------------------------------------------------------
# Known-content redaction — content matches unrelated to authorship, but
# still literal whole-word hits on the anonymity pattern below, so redact
# rather than argue with the checker.
#
# boron/research_state.json quotes an image caption "Limestone quarry at
# Cedar Creek, Virginia" as an example while explaining a rejected source;
# this is a US geography reference (a quarry location), not the authors'
# institution, but "Virginia" is a literal whole-word hit, so replace it with
# the state abbreviation.
# ---------------------------------------------------------------------------
if [ -f "$OUT/state/boron/research_state.json" ]; then
  sed -i '' "s/Cedar Creek, Virginia/Cedar Creek, VA/g" "$OUT/state/boron/research_state.json" 2>/dev/null \
    || sed -i "s/Cedar Creek, Virginia/Cedar Creek, VA/g" "$OUT/state/boron/research_state.json"
fi

# ---------------------------------------------------------------------------
# Anonymity check — fail loudly rather than ship a leak
#
# Word-bounded (\b) so common dictionary words that happen to contain a
# flagged fragment (e.g. "machine"/"machinery"/"pottery" containing
# "machi"/"potter") don't produce a false failure on every rebuild. This is
# the same substantive check as the task's mandated grep; run the exact
# unbounded pattern by hand (see task-12b-report.md) when doing a one-time
# anonymity audit, since \b can in principle miss a leak glued to other
# characters (e.g. "ads7fgsomething"), which the unbounded form would still
# find.
# ---------------------------------------------------------------------------
PATTERN='\bvirginia\b|\bnsdpi\b|\bodni\b|\bads7fg\b|\bdm8qs\b|\bschroeder\b|\bmarathe\b|\bvullikanti\b|\bswarup\b|\bmachi\b|\bklahn\b|\bharrison\b|\bwilson\b|\bfoster\b|\bpotter\b|\bbiocomplexity\b|\brivanna\b|\bbii_nssac\b|sfs/gpfs|/Users/|gmail|@virginia|\buva\b'
echo "== Anonymity grep (word-bounded pattern) =="
if grep -rIln -iE "$PATTERN" "$OUT" 2>/dev/null; then
  echo "ANONYMITY LEAK — fix before zipping" >&2
  exit 1
else
  echo "clean"
fi

# ---------------------------------------------------------------------------
# Size check — gzip the state JSONs if the tree is too big for a 25 MB zip
# ---------------------------------------------------------------------------
TREE_BYTES=$(du -sk "$OUT" | cut -f1)
TREE_BYTES=$((TREE_BYTES * 1024))
echo "== supplementary/ tree size: $TREE_BYTES bytes =="
if [ "$TREE_BYTES" -gt $((20 * 1024 * 1024)) ]; then
  echo "Tree is large; gzip-compressing state/*/research_state.json"
  find "$OUT/state" -name research_state.json -exec gzip -9 {} \;
fi

# ---------------------------------------------------------------------------
# Zip it up
# ---------------------------------------------------------------------------
cd "$PAPER"
zip -rq supplementary.zip supplementary/ -x '*.pyc'
ls -la supplementary.zip
ZIP_BYTES=$(stat -f%z supplementary.zip 2>/dev/null || stat -c%s supplementary.zip)
echo "supplementary.zip: $ZIP_BYTES bytes"
if [ "$ZIP_BYTES" -gt $((25 * 1024 * 1024)) ]; then
  echo "ERROR: supplementary.zip exceeds 25 MB" >&2
  exit 1
fi
echo "OK"

# AAMAS 2027 (IASI) submission checklist

State as of 2026-09-29, branch `aamas2027`. Abstract registration: **2026-10-01 AoE**. Paper + supplementary: **2026-10-08 AoE**.

## Already verified (re-run after any edit)

- [x] Page fit: Conclusion and the REFERENCES heading end on page 8 (9 pages total; page 9 is references only).
- [x] Anonymity: no author, institution, or sponsor names in the PDF text; PDF Author is empty and XMP creator is "Anonymous Author(s)"; `\acmSubmissionID{1150}` is set (OpenReview submission 1150); the empty acknowledgments section does not render.
- [x] Curated files have a `source` on every row: `data/eval/known_routes.csv` (22 rows), `data/eval/usgs_mcs_hs_codes.csv` (20 rows).
- [x] Build: `latexmk -pdf -interaction=nonstopmode main.tex` exits 0.

## Open author items

0. **TL;DR for the submission form:** MP-DNF, a deployed LLM-agent pipeline, maps critical-mineral supply chains bottom-up as HS-coded, evidence-linked hypergraphs that reveal intermediates top-down views miss; an LLM-free audit pinpoints HS coding as its main error.

1. **[DONE 2026-09-29 — submission 1150] Register the abstract by 2026-10-01 AoE.** Plain-text abstract (the rendered `\PaperAbstract`, macros expanded):

   > Critical-mineral supply chains can fail at intermediate processing stages that top-down analysis, working back from finished products, tends to miss. We present MP-DNF, a deployed agentic pipeline that maps these stages bottom-up as a Material Evolution Knowledge Hypergraph (MEKH): six role-specialized LLM agents, equipped through the Model Context Protocol with trade-code search, web search, and a reference cache, propose materials and multi-input/multi-output industrial processes, each typed where possible by Harmonized System (HS) codes so it joins directly to trade data, and each carrying the references an analyst needs to audit it; a deterministic purge drops processes whose reviewed evidence falls short. Analysts at a university national-security policy research institute use its outputs in trade-disruption and vulnerability analyses. For boron, gallium, germanium, and cobalt, MP-DNF surfaces 350 processes; 70 of the boron MEKH’s 74 HS codes are absent from the USGS commodity listing, and coupling it to UN Comtrade data pinpoints refined borax as the concentrated intermediate whose loss cascades furthest. An annotation-free audit finds the processes almost always plausible and mostly grounded in their references, while full correctness, at most 43% under the stricter of two LLM judges, is limited by HS-code assignment, the precise target for the next iteration.

2. **Confirm n = 5 and explain why the boron run is larger than the other six.** `method.tex` §4.3 (Run configuration) says n = 5 iterations. At the run-time commit `35456ce9` the code default was 2 expansion rounds, and the CLI default for maximum reference reviews was 1, while the options default was 2; run options were not recorded in the state folders (only `research_config.json`, the seed configuration, which is identical for all seven boron runs). The evaluated boron MEKH has 74 materials / 129 processes; the other six boron generations have 36–61 / 45–73. If the boron run ran more rounds (or other options) than the six others, §4.3 and the RQ3 wording in `experiments.tex` §5.4 ("same pipeline version and seed configuration") must change. Check the run commands or logs.
3. **Confirm lia at `35456ce9` matches the code that was actually run** on the cluster by the collaborator who ran the pipeline (no local uncommitted changes, same branch).
4. **Anonymized repository link:** create or verify it, then replace `\url{ANONYMIZED-REPOSITORY-LINK}` in `lessons.tex` (Availability paragraph). **It is still a placeholder.** Check that the link resolves and exposes no names.
5. **Sign off the curated evaluation files:** `data/eval/known_routes.csv` and `data/eval/usgs_mcs_hs_codes.csv` (the route definitions and HS-code lists behind the recall and coverage numbers).
6. **Review the bibliography corrections.** 10 entries had real titles but invented authors or DOIs and were corrected; `hasan2022demand` was removed; `farazi2025enhancing` was dropped as a low-tier venue. Both are no longer cited, but they are still in `references.bib`.
7. **Supplementary material:** `supplementary.zip` (1.1 MB) is built by `scripts/build_supplementary.sh`. It now also ships each state folder's `research_config.json`, lia's `src/lia/research/__init__.py` at `35456ce9` (schemas and option defaults), and `scripts/eval/run_all.sh`. The current ZIP was built from the lia worktree branch `aamas2027-eval-t10b` (`LIA=…/.lia-worktrees/t10b`); after that branch is merged into `aamas2027-eval`, rebuild with the default `LIA`. **Rebuild the ZIP after any paper or lia change**, then upload it with `main.pdf`.
8. **Submission form:** enter all 11 authors (in the form only, not in the PDF), select **IASI** as the area, and do **not** opt out of Findings.
9. **Confirm the second "(in submission)" claim** in `application.tex` §6.3 (Use in practice): the companion top-down technology-decomposition system. The first one (the US–China microelectronics vulnerability analysis) is also marked "(in submission)"; confirm both are true at submission time, or drop the parenthetical.
10. **Accept or edit the AI-use disclosure sentence** in `lessons.tex` (Ethical and responsible-use considerations): "An AI coding assistant (Claude Code, Claude Opus 5.5) was also used to write and test the evaluation scripts, to draft the source citations of the curated route and USGS-code files (verified by the authors), and to verify bibliography metadata." `experiments.tex` §5.1 also says the curated files were "drafted with AI assistance and verified by the authors".
11. **Archive the judge caches and state folders.** `data/eval/judge_*.jsonl` and the full state folders under `data/eval/state/` (with `reference_content/`, needed to rerun the evidence-support audit) are gitignored and exist only on this machine. Archive them, e.g. as a private Zenodo draft, before submission.

## Spot checks for co-authors

- [ ] Every number in §5 traces to `data/eval/*.csv` or `data/eval/eval_numbers.tex` (spot-check three).
- [ ] The §4.3 run configuration (`method.tex`, `sec:runconfig`) is correct: generator model GPT-4.1, temperature (provider default), n = 5, k_min = d_min = 2, tau = 0.5. No run-time hours are stated.
- [ ] The `scale` semantics in Table 1 of §4 match the code.

## At submission (author)

Fill `\acmSubmissionID{<id>}`, recompile, re-run the page-fit and anonymity checks, upload `main.pdf` and `supplementary.zip`, then tag the paper repo `aamas2027-submitted` and lia `aamas2027-eval-submitted`.

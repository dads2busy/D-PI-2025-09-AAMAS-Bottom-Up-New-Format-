# Spec: Reconceptualize the MEKH paper for AAMAS 2027 (IASI track)

Date: 2026-09-28. Author of record: Aaron Schroeder (ads7fg). Strategy derived from the AAMAS 2026 reviews in `rebuttal.tex`.

## Venue facts (verified 2026-09-28)

- Target: AAMAS 2027, Hanoi, main track, area **IASI — Innovative Applications and Societal Impact**.
  CFP: https://warwick.ac.uk/fac/sci/dcs/aamas2027/calls/call-for-main-track/
- Deadlines (AoE): abstract **2026-10-01**, paper **2026-10-08**, rebuttal Nov 20–24, notification Dec 21.
- Format: **8 pages of content + unlimited references**, ACM `aamas` class, double-blind, optional supplementary ZIP ≤ 25 MB that reviewers need not read.
- Rejected papers are automatically considered for the archival *Findings of AAMAS 2027* unless authors opt out. Do not opt out.
- AI-use policy: AI may polish text and write demo code; if used in hypothesis or methodology development, disclose prompt, tool and version. Authors are accountable for accuracy.
- IASI evaluation guidance (verbatim): "Submissions should clearly explain the application context, the role of agents, the novelty of the application, and the evidence of benefit, feasibility, adoption, or measurable impact. Collaborations with relevant stakeholders are strongly encouraged."

## Prior reviews (AAMAS 2026, submission #1162) — the requirements list

| Objection | Requirement it creates |
|---|---|
| UUGx: no correctness evaluation of hyperedges; wants expert check or comparison to known transformations | RQ1: precision proxy over *all* hyperedges + recall against curated known routes + evidence-support rate |
| DPV5: top-down disadvantages asserted, never shown; research questions not central | RQ2: quantify intermediates the MEKH surfaces that an official top-down commodity view lacks; RQs stated in §1 |
| DPV5/UUGx: network analyses assume the graph is right | Order the evaluation: correctness first, then structure/robustness, then application |
| S2X2: "no AAMAS contribution", architecture is buzzwords, no prompt/validation detail | Six-agent table (role, inputs, tools, typed output, symbolic gate); run configuration; prompts in supplementary |
| UUGx: novelty is system integration; cite LLM-KG-construction work | Add the named references; state novelty as reference-grounded, HS-typed hypergraph construction + policy analysis |
| UUGx: generality overclaimed | Claim architectural generality only |

## Hard constraints

- No new human verification runs. All new evidence must be computational or desk curation by an author from authoritative public sources.
- Stakeholder: work was conducted for the National Security Data and Policy Institute (NSDPI), University of Virginia, under contract to the U.S. Office of the Director of National Intelligence. In the anonymized submission this must be described generically ("a university national-security policy research institute, under contract to a U.S. government intelligence-community sponsor"); the full attribution goes in the camera-ready acknowledgments only.
- Existing results to keep: 4 MEKHs (Ge, Ga, Co, B; Table 1), Boron degree distributions, criticality definitions and Table 2, 7-run RBO sensitivity analysis, Comtrade 2024 disruption analysis.
- Dropped: multi-agent vs generalist comparison (pilot too small, generalist won); Discussion section anecdotes; architecture-layers figure; Rationale and CLI subsections.

## Research questions the paper must answer

- **RQ1 (accuracy):** Are the discovered transformations factually correct — process, inputs/outputs, HS codes — and are they actually supported by the references cited?
- **RQ2 (coverage vs. top-down):** Does bottom-up discovery surface intermediate materials absent from the official top-down commodity view (USGS Mineral Commodity Summaries HS-code listings)?
- **RQ3 (robustness):** Are the derived criticality rankings stable under stochasticity of generation?
- **Application:** What do the MEKHs reveal for disruption analysis of critical-mineral trade (Comtrade), and how are the outputs used downstream?

## Deliverables

1. Evaluation artifacts in `~/git/lia/scripts/` (scripts) and `<paper>/data/eval/` (outputs): judge report with bootstrap CIs, evidence-support rates, known-route recall, top-down coverage table.
2. Rewritten paper (≤ 8 content pages, anonymized) with the section plan in the implementation plan.
3. Supplementary ZIP: agent prompts, eval scripts, curated route CSV, judge cache, state files (if size permits).
4. Registered abstract by 2026-10-01; submitted PDF by 2026-10-08.

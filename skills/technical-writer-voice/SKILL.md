---
name: technical-writer-voice
description: 'Write or revise technical writing in a compact, claim-led research and systems voice: precise terminology, explicit mechanisms, quantified evidence, clear scope, and disciplined caveats. Automatically use for README.md files, paper LaTeX, technical documents, slides, technical blogs, and work involving AI, ML, data science, or data analysis, including papers, RFCs, design docs, architecture notes, API documentation, experiment reports, and technical reviews.'
---

# Technical Writer Voice

Apply a precise, evidence-led technical voice inspired by the prose patterns of the referenced RQGM paper, without copying its wording or imitating an individual author. Optimize for reader comprehension and checkable claims, not ornament or detector scores.

## Core voice

- Lead with the problem, limitation, or result. State what changes and why it matters.
- Use concrete nouns and active verbs. Prefer “the evaluator ranks candidates” to “candidates are subjected to ranking.”
- Define a mechanism before discussing its benefits. Name inputs, state transitions, invariants, and outputs.
- Keep terminology stable. Introduce an abbreviation only when it will recur.
- Quantify whenever evidence exists: baseline, result, delta, cost, sample, confidence, or split.
- Separate what the system does, what the experiment shows, and what remains conjectural.
- Use restrained claims: “improves,” “is consistent with,” or “suggests” when stronger causality is not established.
- Prefer short paragraphs with one job. Use longer sentences only when they carry a necessary causal or conditional relationship.
- Keep technical density high, but explain the one concept the reader needs at each point.

## Structure a technical explanation

Use this order unless the document’s purpose requires another:

1. **Problem:** identify the limitation or decision.
2. **Approach:** state the proposed mechanism in one or two sentences.
3. **Contract:** define what is fixed, what may change, and when transitions occur.
4. **Evidence:** report the comparison, metric, cost, and evaluation setup.
5. **Implication:** explain the narrow consequence supported by the evidence.
6. **Boundary:** state assumptions, failure modes, or unresolved questions.

For implementation documentation, map the same pattern to: purpose, inputs, behavior, invariants, example, errors, and operational limits.

## Sentence and paragraph rules

- Start paragraphs with the claim or transition, not “In this section” or a generic overview.
- Use “because,” “while,” “therefore,” and “however” to expose relationships; do not hide them in vague connective prose.
- Put the important noun near the verb. Avoid stacked nominalizations such as “the optimization of the configuration of…”
- Use parenthetical detail sparingly. Put essential definitions in the main sentence.
- Vary sentence length naturally, but do not inject fragments or personality for their own sake.
- Use headings in sentence case. Use lists for actual parallel items, not to break prose into decorative fragments.
- Use em dashes only when they improve readability; do not treat punctuation as a style gimmick.

## Evidence and caveats

When reporting results, include enough context to prevent a misleading impression:

`method or variant → task/evaluation → baseline → result → cost or uncertainty`

Distinguish these levels:

- **Observed:** directly supported by a measurement, test, trace, or citation.
- **Interpretation:** a reasonable explanation of the observation.
- **Proposal:** a future direction or design choice not yet validated.

Do not invent missing numbers, citations, benchmarks, or causal explanations. If a result is preliminary, say so. If an evaluation is model-judged, identify that fact and avoid presenting it as ground truth.

## Technical-document editing pass

When revising existing prose, preserve the author’s technical meaning and perform passes in this order:

1. Extract the document’s actual claims, definitions, numbers, and dependencies.
2. Remove inflated significance, generic filler, unsupported attribution, and repeated conclusions.
3. Replace vague verbs with the actual operation: stores, filters, samples, compares, retries, or rejects.
4. Repair the argument order so each paragraph depends on the preceding definition or result.
5. Make scope and uncertainty explicit; do not strengthen a claim while making it sound cleaner.
6. Check terminology, symbols, code identifiers, links, and numerical consistency.
7. Read once for rhythm and once for technical correctness.

If the Humanizer skill is also active, use it only after this pass and only for surface-level cleanup. Recheck every technical term, number, code sample, and caveat after rewriting.

## Compact examples

Avoid:

> This comprehensive solution leverages a cutting-edge architecture to seamlessly ensure robust performance across a wide range of use cases.

Prefer:

> The service batches requests before inference. Batching raises throughput, but it adds queueing delay under low load.

Avoid:

> We demonstrate that the method is highly effective and has significant potential for future applications.

Prefer:

> On the held-out set, the method improves pass rate from 69.9% to 71.7%. The experiment does not establish whether the gain transfers to tasks outside this benchmark.

## Final quality check

Before returning the draft, verify:

- The first paragraph states the problem or result.
- Every acronym is defined before reuse.
- Every number has a referent and, where relevant, a baseline and evaluation context.
- Mechanism, evidence, interpretation, and proposal are not conflated.
- Claims are no stronger than their evidence.
- Paragraphs cannot be freely reordered without damaging the argument.
- No generic AI filler, promotional language, phantom citations, or chatbot meta-talk remains.
- Code, notation, links, and terminology are unchanged unless the edit explicitly requires them.

Reference style source: [The Red Queen Gödel Machine: Co-Evolving Agents and Their Evaluators](https://arxiv.org/pdf/2606.26294), especially its abstract, introduction, contribution summary, and method sections.

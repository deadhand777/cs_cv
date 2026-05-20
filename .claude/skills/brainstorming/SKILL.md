---
name: brainstorming
description: >
  Phase 1 of drklein-craft. Use when starting any non-trivial task to understand
  what the developer actually wants before writing code. Explores context, clarifies
  requirements, proposes approaches, and produces an approved spec. Mandatory first
  step for features, refactoring, complex bug fixes, and multi-file changes.
user-invocable: true
---

# Brainstorming

Understand what needs to be built before building it. This skill produces a spec
that feeds into `writing-plans`.

**Announce at start:** "Using drklein-craft:brainstorming to understand the requirements."

**No code is written during this phase.** Not even scaffolding.

---

## Checklist

Complete these steps in order:

1. Explore project context
2. Ask clarifying questions
3. Propose 2-3 approaches
4. Present design (section by section, dev approves each)
5. Write spec to `docs/specs/YYYY-MM-DD-<topic>.md`
6. Self-review the spec
7. Dev reviews written spec
8. Handoff to `writing-plans`

---

## Step 1: Explore Context

Dispatch a Haiku subagent to scan the relevant parts of the codebase.

```
Use a subagent (haiku) to investigate [TOPIC].
Return only: relevant file paths, function signatures, and a summary in max 5 sentences.
Do not read entire files unless signatures are insufficient.
```

- The subagent has its own context window — keeps the main context clean
- Write results to `docs/status/findings.md`
- Check security-boundaries: do not access denied paths

---

## Step 2: Clarify Intent

Ask questions to understand the task fully before proposing solutions.

**Rules:**
- One question at a time — do not overwhelm
- Prefer multiple choice when possible (easier to answer)
- Focus on: purpose, constraints, success criteria, affected systems
- If the task spans multiple independent systems, flag this immediately — it needs decomposition before detailed design

**Stop asking when you can answer:**
- What exactly should be built?
- What are the constraints?
- How will we know it works?

---

## Step 3: Propose Approaches

Present 2-3 different approaches with trade-offs.

**Format:**
- Lead with your recommendation and explain why
- For each alternative: what's different, what's better, what's worse
- Be honest about trade-offs — no "best of both worlds" claims
- Apply YAGNI: remove unnecessary features from all approaches

---

## Step 4: Present Design

Once you understand what to build, present the design section by section.

- Scale each section to its complexity: a few sentences if straightforward, more detail if nuanced
- After each section, ask: "Does this look right so far?"
- Be ready to revise — go back and clarify if something doesn't fit

**Sections to cover (as needed):**
- Architecture / component structure
- Data flow
- Interfaces / APIs
- Error handling approach
- Testing strategy
- Security considerations (reference `security-boundaries`)

---

## Step 5: Write Spec

Save the approved design to `docs/specs/YYYY-MM-DD-<topic>.md`.

**Spec format:**

```markdown
# [Feature Name] Design Spec

> **Date:** YYYY-MM-DD
> **Status:** Draft | Approved
> **Author:** [Developer name]

## Goal
One sentence: what does this achieve?

## Context
What exists today? What's the problem?

## Design
[The approved design from Step 4]

## Security Considerations
[Any security-boundaries implications]

## Open Questions
[Anything unresolved — should be empty before approval]
```

---

## Step 6: Self-Review

Before asking the dev to review, check the spec yourself:

1. **Placeholder scan:** Any "TBD", "TODO", or vague sections? Fix them.
2. **Consistency:** Do sections contradict each other?
3. **Scope:** Is this focused enough for a single implementation plan? If not, decompose.
4. **Ambiguity:** Could any requirement be read two ways? Pick one, make it explicit.

Fix issues inline. No need for a second review pass.

---

## Step 7: Dev Reviews Spec

Ask the developer to review the written spec:

> "Spec written to `docs/specs/YYYY-MM-DD-<topic>.md`. Please review and let me know
> if you want any changes before we move to implementation planning."

Wait for approval. If changes are requested, apply them and re-run the self-review.

---

## Step 8: Handoff

Once the spec is approved, invoke `writing-plans` to create the implementation plan.

> "Spec approved. Moving to drklein-craft:writing-plans to create the implementation plan."

---

## Principles

- **One question at a time.** Don't overwhelm with multiple questions.
- **YAGNI ruthlessly.** Remove unnecessary features from all designs.
- **Explore before proposing.** Never propose solutions without understanding the codebase first.
- **Dev approves before proceeding.** No phase transition without explicit approval.
- **Security is not optional.** Flag if the task touches restricted areas.

---
name: using-skills
description: >
  Entry point for drklein-craft. Routes requests to the correct skill in the
  pipeline: brainstorming → writing-plans → agent-driven-dev → code-review.
  Handles session recovery from docs/status/. Invoke this when starting a
  non-trivial task that involves multiple steps, files, or requires planning.
user-invocable: true
---

# drklein-craft: Using Skills

This skill routes your request to the right phase of the development pipeline.

---

## The Pipeline

```
brainstorming → writing-plans → agent-driven-dev → code-review
```

Each phase produces an artifact that feeds the next:

| Phase | Skill | Input | Output |
|---|---|---|---|
| Understand | `brainstorming` | Developer's request | Spec in `docs/specs/` |
| Plan | `writing-plans` | Approved spec | Plan in `docs/status/` |
| Execute | `agent-driven-dev` | Approved plan | Committed code + `docs/status/progress.md` |
| Review | `code-review` | Completed implementation | PR (reviewed, no AI attribution) |

`security-boundaries` applies at every phase — check it before any file access or command execution.

---

## Routing

When a developer brings a task, determine where to enter the pipeline:

**New feature, change, or complex task (no spec exists):**
→ Start with `brainstorming`

**Spec already exists and is approved:**
→ Start with `writing-plans`

**Plan already exists and is approved:**
→ Start with `agent-driven-dev`

**Implementation is done, needs review:**
→ Start with `code-review`

**Trivial task (single file edit, quick question, lookup):**
→ Handle directly. No skill needed.

---

## Session Recovery

If `docs/status/` contains files from a previous session:

1. Check for an active plan (`*-plan.md`)
2. Read `progress.md` if it exists
3. Determine current state:
   - Plan exists but no progress → resume at `agent-driven-dev`
   - Progress exists with incomplete tasks → resume where it left off
   - All tasks complete but no PR → resume at `code-review`
4. Announce to the developer: "Found an active plan for [feature]. Last completed step was [X]. Resuming from [Y]."

---

## Model Routing

Apply these defaults across all skills:

| Role | Model | When |
|---|---|---|
| Exploration subagent | Haiku | Searching files, reading code, gathering context |
| Standard work | Sonnet | Implementation, planning, reviews — 90% of tasks |
| Complex reasoning | Opus | Architecture decisions, race conditions, multi-repo work |

**After any Opus task:** Switch back to Sonnet. Opus is never the default.

---

## Context Hygiene

| Situation | Action |
|---|---|
| Logical step completed | Update `docs/status/progress.md`, then `/clear` |
| Long session, context still relevant | `/compact` |
| Quick side question | `/btw` |
| Routine work | `/effort low` or `/effort medium` |

**Before every `/clear`:** Ensure `docs/status/progress.md` and any active plan are up to date.

---

## Rules

- **Security first.** Every command and file access goes through `security-boundaries`.
- **No AI attribution.** No `Co-Authored-By`, no AI markers in commits or PRs.
- **Dev decides.** The developer chooses when to use the pipeline. No forced invocations.
- **Small commits.** One logical change per commit. Separate PRs per feature.
- **Pipeline order.** Don't skip phases unless the developer explicitly has the artifact from a previous phase (e.g., an existing spec).

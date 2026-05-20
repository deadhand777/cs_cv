---
name: code-review
description: >
  Phase 4 of drklein-craft. Three-stage review before creating a PR: guided
  self-review with the developer, automated review via subagent, then PR creation.
  Use after implementation is complete (agent-driven-dev finished) or when the
  developer wants to review their work before merging.
user-invocable: true
---

# Code Review

Three-stage review: self-review with the dev, automated review, then PR creation.

**Announce at start:** "Using drklein-craft:code-review to review the implementation."

---

## Process

```
Stage 1: Self-Review (dev + Claude)
    ▼
Stage 2: Automated Review (Haiku subagent)
    ▼
Stage 3: Verification + PR Creation
```

All three stages must pass before a PR is created.

---

## Stage 1: Self-Review

Walk through the changes together with the developer. This is not a rubber stamp —
actively help the dev find issues.

### Per File

For each changed file:

1. **Show the diff summary** — what changed, how many lines added/removed
2. **Flag anything unusual:**
   - Large functions or complex logic
   - Missing tests for new code paths
   - Hardcoded values or magic numbers
   - Security-relevant changes (auth, permissions, data access)
   - Patterns that deviate from the rest of the codebase
3. **Ask:** "Anything here you want to discuss or change?"

### Overall Summary

After all files are reviewed:

1. **Summary:**
   - Files changed: N
   - Tests added/modified: N
   - Spec coverage: are all requirements from the spec addressed?
2. **Ask:** "Ready for automated review, or want to adjust something first?"

If the dev wants changes, apply them and re-review the affected files.

---

## Stage 2: Automated Review

Dispatch a Haiku subagent to review the full diff.

### What the Reviewer Checks

1. **Spec compliance** — Does the implementation match the spec?
2. **Code quality** — Readability, naming, duplication, complexity
3. **Security-boundaries compliance:**
   - No access to denied file patterns
   - No production system access
   - No PII handling
   - No hardcoded secrets
   - No AI attribution in commits
4. **Test quality** — Are tests meaningful and covering important paths?
5. **Edge cases** — Missing null checks, error handling, boundary conditions

### Issue Categories

- **Critical** — Must fix before PR. Security issues, broken functionality, data loss risk.
- **Important** — Should fix before PR. Missing tests, code smells, potential bugs.
- **Minor** — Note for the dev. Style, naming, minor improvements.

### Handling Results

- **Critical or Important issues** → fix them, then re-run automated review
- **Minor issues only** → note them, proceed to Stage 3
- **No issues** → proceed to Stage 3

---

## Stage 3: Verification + PR Creation

### Verification Gate

Before creating the PR, verify with evidence:

| Claim | Required Evidence |
|---|---|
| Tests pass | Run test command, show output with 0 failures |
| Build succeeds | Run build command, show exit code 0 |
| Linter clean | Run linter, show 0 errors |

**Rules:**
- If you haven't run the command in this session, you cannot claim it passes
- No "should work", "probably fine", "looks correct"
- If verification fails → fix first, never skip

### PR Creation

Only after Stages 1, 2, and verification pass:

1. Push the branch
2. Create PR with:
   - Clear title (under 70 characters)
   - Summary: what was built, why, key decisions
   - Test plan: how to verify the changes
   - Link to spec in `docs/specs/`
3. **No AI attribution** — no Co-Authored-By, no AI-generated badges

### PR Format

```markdown
## Summary
- [Key change 1]
- [Key change 2]
- [Key change 3]

## Spec
[Link to docs/specs/YYYY-MM-DD-<topic>.md]

## Test Plan
- [ ] [How to test change 1]
- [ ] [How to test change 2]

## Security
- [ ] No secrets in diff
- [ ] No production access
- [ ] security-boundaries compliant
```

---

## Rules

- **All three stages are mandatory.** No skipping self-review, no skipping automated review.
- **Evidence before claims.** Run the verification, show the output, then state the result.
- **Fix before proceeding.** Critical and Important issues must be resolved before PR creation.
- **No AI attribution.** Not in the commit, not in the PR, not anywhere.
- **Dev decides.** If the dev disagrees with a review finding, discuss it — don't force changes.

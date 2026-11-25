# Contributing

## Getting started

1. Fork or clone the repository.
2. Create a branch: `feature/<short-name>`, `fix/<short-name>` or `docs/<short-name>`.
3. Build with `./scripts/build.sh` and run tests with `./scripts/test.sh`.
4. Open a pull request using the template and request a review.

## Commit messages

```
<type>: <short imperative summary>

type ∈ {feat, fix, docs, test, refactor, chore}
```

## Pull request checklist

- [ ] Builds and tests pass locally.
- [ ] New code follows [Coding Standards](CODING_STANDARDS.md).
- [ ] New structures/functions have tests.
- [ ] Documentation updated where behaviour changed.
- [ ] Linked issue referenced in the description.

## Review

- One approving review is required before merge.
- Keep commits focused; squash noisy fixups.

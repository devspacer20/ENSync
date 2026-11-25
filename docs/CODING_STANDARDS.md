# Coding Standards

## Language and layout

- C11, no compiler-specific extensions without an ifdef guard.
- Headers live in `include/<module>/`; implementations in `src/<module>/`.
- One module per header/source pair, named after the module.
- Include guards use `ENSYNC_<MODULE>_<FILE>_H`.
- Two-space indentation, braces on the same line for control flow, 100-column soft limit.
- All public declarations carry a short Doxygen comment.
- No magic numbers: named constants go in `include/common/constants.h`.

## Naming

- Functions and variables: `snake_case`.
- Types and enums: `ensync_` prefix, `snake_case`.
- Macros: `UPPER_SNAKE_CASE`.
- File names: `snake_case.c` / `.h`.

## Safety and testing

- Check allocation and I/O results; report errors via `error.h`.
- No leaks: every `init` has a matching `destroy`.
- Every new function gets a unit test in `tests/`.
- Build with `-Wall -Wextra -Wpedantic`; warnings are treated as errors in CI.

*TODO: agree on a formatter (clang-format) and commit hook.*

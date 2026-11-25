#!/usr/bin/env bash
set -euo pipefail

BUILD_DIR="${BUILD_DIR:-build}"

if [[ ! -d "$BUILD_DIR" ]]; then
    echo "No build directory found; building first." >&2
    ./scripts/build.sh
fi

ctest --test-dir "$BUILD_DIR" --output-on-failure

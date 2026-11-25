#!/usr/bin/env bash
set -euo pipefail

BUILD_DIR="${BUILD_DIR:-build}"
CMAKE="${CMAKE:-cmake}"

"$CMAKE" -S . -B "$BUILD_DIR"
"$CMAKE" --build "$BUILD_DIR" --parallel "$(( $(nproc) + 1 ))"

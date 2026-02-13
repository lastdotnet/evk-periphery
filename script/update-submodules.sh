#!/usr/bin/env bash
# Update submodules so that euler-price-oracle and its redstone dep are at the
# correct commits (avoids "could not contain 2dc8e9a..." when that ref is gone).
# Redstone is pinned to 3d98ce3c0c7493537cfdcc3eb65440f72d780d04.
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT"
git submodule update --init lib/euler-price-oracle
cd lib/euler-price-oracle && git submodule update --init lib/redstone-oracles-monorepo && cd "$REPO_ROOT"

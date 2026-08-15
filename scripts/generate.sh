#!/usr/bin/env bash
# Regenerate the Hanzo Cloud client from the Hanzo Cloud API document.
#
# A CALL SITE, not a generator invocation. The invocation is logic and lives
# once, in hanzoai/openapi `generate.py`; every per-language knob — generator,
# package name, library name, the mustache overrides, the name mappings and
# which path in this repo the generator owns — is data in `sdks.yaml` beside it.
#
#   ./scripts/generate.sh          # rewrite lib/
#   ./scripts/generate.sh --check  # diff only; non-zero if the committed client drifted
#
# BOTH INPUTS ARRIVE AS VALUES. $SPEC is the document, already fetched at a
# pinned ref and digest-checked; $OPENAPI is the checkout holding the driver.
# hanzoai/ci's client lane sets both, because it holds the one credential that
# reads the forge the driver lives on. Set OPENAPI by hand to run it by hand.
#
# Requires: uv, java 17+. uv carries the interpreter and the PyYAML the driver
# needs; the ci client lane provisions it.
set -euo pipefail
cd "$(dirname "$0")/.."

: "${OPENAPI:?the generator lives in hanzoai/openapi; the ci client lane sets OPENAPI, or point it at a checkout}"

if [ -n "${SPEC:-}" ]; then set -- --spec "$SPEC" "$@"; fi

exec uv run --with pyyaml python3 "$OPENAPI/generate.py" dart --repo "$PWD" "$@"

#!/usr/bin/env bash
# Local dev build: sibling checkouts at /tmp/ha-ctx instead of GitHub clones.
# /tmp/ha-ctx/{koru,koru-libs} track origin/main; orisha is local HEAD.
set -euo pipefail
CTX="${HA_CTX:-/tmp/ha-ctx}"
docker build -f "$CTX/orisha/httparena/Dockerfile.local" -t httparena-orisha "$CTX"

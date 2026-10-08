#!/usr/bin/env bash
# io_uring pump variant — same sources, --build=io-uring selects drive|io-uring.
set -euo pipefail
CTX="${HA_CTX:-/tmp/ha-ctx}"
docker build -f "$CTX/orisha/httparena/Dockerfile.uring" -t httparena-orisha-uring "$CTX"

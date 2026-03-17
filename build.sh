#!/bin/bash
set -euo pipefail

IMAGE="${1:-quay.io/dprince/lightspeed-stack:open_responses_compatible_endpoint}"

podman build -t "$IMAGE" -f Containerfile .
podman push "$IMAGE"

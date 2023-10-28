#!/bin/bash
set -euo pipefail

docker buildx create --name uuid-builder --use --bootstrap

docker buildx build --push \
--platform linux/amd64,linux/arm64 \
--tag shadyoak/uuidgen:latest .

docker buildx rm uuid-builder

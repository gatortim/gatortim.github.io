#!/usr/bin/env bash
set -euo pipefail

# Build the docker image and extract the generated index.html
IMAGE_TAG="gatortim-resume:latest"
CONTAINER_NAME="resume_build"

docker build -t "$IMAGE_TAG" -f Dockerfile .

# create a short-lived container and copy the generated index.html
docker create --name "$CONTAINER_NAME" "$IMAGE_TAG"
docker cp "$CONTAINER_NAME":/build/index.html ./index.html
docker rm -f "$CONTAINER_NAME"

echo "index.html exported to ./index.html"

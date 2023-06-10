#!/bin/bash

ARTIFACT_PATH=$1
DOCKER_REPO=$2
DOCKER_TAG=$3

set -e

if [ ! -d "$ARTIFACT_PATH" ]; then
  echo "$ARTIFACT_PATH could not be found"
  exit 1
fi

set +e
rm -R artifact
set -e

mkdir artifact
cp -R "${ARTIFACT_PATH}/" ./artifact/

docker buildx build --platform linux/amd64 -t "$DOCKER_REPO:$DOCKER_TAG" .
docker push "$DOCKER_REPO:$DOCKER_TAG"


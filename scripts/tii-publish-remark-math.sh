#!/bin/bash

# Run this from the project root directory

set -e

cd ./packages/remark-math

npm install
mkdir -p build
npm run build-tii

docker pull quay.io/turnitin/js-uploader
docker run --rm --volume $(pwd):/build quay.io/turnitin/js-uploader uploader

echo "Success!"

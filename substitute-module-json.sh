#!/bin/sh
set -e

VERSION=$1
GIT_TAG=$2

# Update module.json with new values using jq
jq --arg version "$VERSION" \
   --arg url "https://github.com/$GITHUB_REPOSITORY" \
   --arg manifest "https://github.com/$GITHUB_REPOSITORY/releases/latest/download/module.json" \
   --arg download "https://github.com/$GITHUB_REPOSITORY/releases/download/$GIT_TAG/tor2e-theme.zip" \
   '.version = $version | .url = $url | .manifest = $manifest | .download = $download' \
   module.json > tmp.json && mv tmp.json module.json
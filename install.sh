#!/bin/bash
set -e

npm install -g @anthropic-ai/claude-code

if [ -n "$GITHUB_TOKEN" ]; then
  echo "@springcare:registry=https://npm.pkg.github.com" >> ~/.npmrc
  echo "//npm.pkg.github.com/:_authToken=$GITHUB_TOKEN" >> ~/.npmrc
  npm install -g @springcare/ai-registry-cli
else
  echo "Warning: GITHUB_TOKEN not set, skipping ai-registry-cli install"
fi
# Base image: official pre-built image of the same version (building from scratch fails on `gem install licensed`)
FROM ghcr.io/lowlighter/metrics:v3.35-beta

# Overlay patched plugin files (GitHub API changes)
COPY source/plugins/achievements/queries/achievements.graphql /metrics/source/plugins/achievements/queries/achievements.graphql
COPY source/plugins/achievements/queries/organizations.graphql /metrics/source/plugins/achievements/queries/organizations.graphql
COPY source/plugins/achievements/list/users.mjs /metrics/source/plugins/achievements/list/users.mjs
COPY source/plugins/achievements/list/organizations.mjs /metrics/source/plugins/achievements/list/organizations.mjs
COPY source/plugins/habits/index.mjs /metrics/source/plugins/habits/index.mjs
COPY source/plugins/code/index.mjs /metrics/source/plugins/code/index.mjs
COPY source/plugins/languages/analyzer/recent.mjs /metrics/source/plugins/languages/analyzer/recent.mjs

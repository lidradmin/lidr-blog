#!/usr/bin/env bash
# Checks this repo's posts with the real lidr.io validator (strict: any problem fails).
# Used by the Claude Code skill and by anyone who edits files directly.
set -euo pipefail
CONTENT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SITE_DIR="${LIDR_SITE_DIR:-$HOME/.cache/lidr-site}"
if [ -d "$SITE_DIR/.git" ]; then
  git -C "$SITE_DIR" fetch --quiet --depth 1 origin main
  git -C "$SITE_DIR" reset --quiet --hard origin/main
else
  git clone --quiet --depth 1 https://github.com/lidradmin/lidr.io.git "$SITE_DIR"
fi
cd "$SITE_DIR"
LOCK_HASH="$(shasum -a 256 package-lock.json | cut -d' ' -f1)"
if [ ! -f node_modules/.lidr-lock-hash ] || [ "$(cat node_modules/.lidr-lock-hash)" != "$LOCK_HASH" ]; then
  PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1 npm ci --silent --no-audit --no-fund
  echo "$LOCK_HASH" > node_modules/.lidr-lock-hash
fi
BLOG_CONTENT_DIR="$CONTENT_DIR" BLOG_STRICT=1 npx tsx scripts/blog/prepare.ts --check

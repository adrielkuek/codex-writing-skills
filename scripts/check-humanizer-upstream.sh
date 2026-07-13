#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
upstream_url="https://github.com/Aboudjem/humanizer-skill.git"
pinned="$(awk '/^- Pinned commit:/{gsub(/`/, "", $4); print $4}' "$repo_root/UPSTREAM.md")"
latest="$(git ls-remote "$upstream_url" refs/heads/main | awk '{print $1}')"

if [[ -z "$latest" ]]; then
  echo "Unable to read Humanizer upstream." >&2
  exit 2
fi

if [[ "$pinned" == "$latest" ]]; then
  echo "Humanizer upstream is current at $latest"
else
  echo "Humanizer upstream changed"
  echo "  pinned: $pinned"
  echo "  latest: $latest"
  echo "Review the update procedure in UPSTREAM.md."
  exit 1
fi

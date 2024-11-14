#!/usr/bin/env bash

set -euo pipefail

if git config remote.dokku.url >&-; then
  exit
fi

git remote add "${name}" "${url}"

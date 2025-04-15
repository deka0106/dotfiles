#!/bin/sh
set -euo pipefail

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply deka0106 --branch ps

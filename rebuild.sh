#!/usr/bin/env bash

set -e

# Go to repo (safety)
cd "$(dirname "$0")"

# Add changes
git add .

# Commit (opens vim)
git commit

# Rebuild
sudo nixos-rebuild switch --flake .#laptop --fast

echo "✅ Rebuild complete!"

#!/bin/bash

echo "=========="
wsl git config --global user.name "${GITHUB_ACTOR}"
wsl git config --global user.email "${INPUT_EMAIL}"
wsl git config --global --add safe.dirctory /github/workspace
wsl python3 /usr/bin/feed.py
wsl git add -A && commit -m "Update feed"
wsl git push --set-upstream origin main
echo "========"

#!/bin/bash

echo "=========="
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.dirctory /github/workspace
git config --global safe.directory *
python3 /usr/bin/feed.py
git add -A && commit -m "Update feed"
git push --set-upstream origin main
echo "========"

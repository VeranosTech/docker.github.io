#!/usr/bin/env bash

# current git branch must be `docs-korean`
git add . -A
git commit -m "automatic commit"
git push origin docs-korean

git checkout -B gh-pages
git rebase docs-korean
git push -f origin gh-pages
git reset --hard HEAD
git clean -f
git checkout docs-korean

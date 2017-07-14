#! /bin/bash

git clean -fxd
git reset --hard HEAD
git pull

python scripts/github2CSV.py

git add _data
#git add vittime.md
git commit -m "auto CSV update $(date -Iseconds)"
git pull --rebase
git push

git clean -fxd
git reset --hard HEAD


#! /bin/bash

cd italiaafuoco
git clean -fxd
git reset --hard HEAD
git pull
cd ..

python italiaafuoco_segnalazioni/scripts/github2CSV.py italiaafuoco/_data/issues.csv italiaafuoco/_data/issuesjson.json italiaafuoco/_data/issuesgeojson.json

cd italiaafuoco
git add _data
#git add vittime.md
git commit -m "auto CSV update $(date -Iseconds)"
git pull --rebase
git push

git clean -fxd
git reset --hard HEAD
cd ..

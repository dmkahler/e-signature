#! /bin/bash

Rscript esign.R "Reeder FAE 2026"

git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


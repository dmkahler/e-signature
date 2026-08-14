#! /bin/bash

Rscript esign.R "Zeyzus English certification"

git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


#! /bin/bash

Rscript esign.R "Kahler - 2022 effort certification"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


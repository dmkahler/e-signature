#! /bin/bash

Rscript esign.R "Bakar - 2022 effort certification as PI"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


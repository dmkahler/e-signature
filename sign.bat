#! /bin/bash

Rscript esign.R "Summer 2024 grade changes"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


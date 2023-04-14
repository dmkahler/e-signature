#! /bin/bash

Rscript esign.R "Martin - 2023 URP endorsement"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


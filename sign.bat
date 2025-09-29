#! /bin/bash

Rscript esign.R "AY2024-25 FAE Dean's response - notes made"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


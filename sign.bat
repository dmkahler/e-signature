#! /bin/bash

Rscript esign.R "Dakin summer 2026 sampling contract request"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


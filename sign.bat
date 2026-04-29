#! /bin/bash

Rscript esign.R "Kahler summer 2026 computer course contract request"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


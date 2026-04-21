#! /bin/bash

Rscript esign.R "Sweeney 2026 URP faculty approval"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


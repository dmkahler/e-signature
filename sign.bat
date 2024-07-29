#! /bin/bash

Rscript esign.R "SAN Parks data agreement for crayfish, macroinvert, water physicoshemical"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


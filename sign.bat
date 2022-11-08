#! /bin/bash

Rscript esign.R "Bakar ETD form"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


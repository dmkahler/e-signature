#! /bin/bash

Rscript esign.R "Fortsch URP agreement"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


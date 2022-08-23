#! /bin/bash

Rscript esign.R "Hiltons thesis MOU"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


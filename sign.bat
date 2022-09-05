#! /bin/bash

Rscript esign.R "Hostetler honors fellows application"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


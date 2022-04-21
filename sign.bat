#! /bin/bash

Rscript esign.R "Request for data from CENCARTA"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


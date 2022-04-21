#! /bin/bash

Rscript esign.R "Request for data from ARA-SOL"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


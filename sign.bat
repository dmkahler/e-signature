#! /bin/bash

Rscript esign.R "Bathgate contract request"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


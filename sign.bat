#! /bin/bash

Rscript esign.R "Lawson-Bulten contract request"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


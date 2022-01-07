#! /bin/bash

Rscript esign.R "another test, with batch command"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


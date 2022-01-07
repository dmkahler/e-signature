#! /bin/bash

Rscript esign.R "add note here!"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


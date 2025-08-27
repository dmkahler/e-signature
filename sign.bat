#! /bin/bash

Rscript esign.R "Reeder ClaimsConf - D. Johnson"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


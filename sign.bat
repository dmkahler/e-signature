#! /bin/bash

Rscript esign.R "Ferrick English - certified"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


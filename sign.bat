#! /bin/bash

Rscript esign.R "MDPI voucher use - Mxolisi's review paper"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


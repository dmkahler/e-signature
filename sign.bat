#! /bin/bash

Rscript esign.R "Paudel, English - Certified"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


#! /bin/bash

Rscript esign.R "Beall, English - Certified"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


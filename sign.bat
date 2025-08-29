#! /bin/bash

Rscript esign.R "Freer 3 credits of research"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


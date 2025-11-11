#! /bin/bash

Rscript esign.R "Robinson, GIS Spring 2026"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


#! /bin/bash

Rscript esign.R "Meding Spring 2026 2cr BME research"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


#! /bin/bash

Rscript esign.R "Mxolisi - Intention to Submit"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


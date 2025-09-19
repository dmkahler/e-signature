#! /bin/bash

Rscript esign.R "Meding 1 credit of research"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


#! /bin/bash

Rscript esign.R "2022 conflict of interest disclosure"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


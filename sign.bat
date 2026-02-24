#! /bin/bash

Rscript esign.R "Wheeler chair 2026 lab volunteer"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


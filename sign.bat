#! /bin/bash

Rscript esign.R "USAID ADS303 certification of no narcotics or drug offenses"
git add verificationlog.csv
git add sign.bat
git commit -m "updated log"
git push


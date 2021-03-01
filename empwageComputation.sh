#! /bin/bash

 EMP_RATE_PER_HR=20;
 FULL_TIME_HRS=8;

randomCheck=$((RANDOM%2))
isPresent=1;
if [ $isPresent -eq $randomCheck ]
then
         salary=$(( $EMP_RATE_PER_HR*$FULL_TIME_HRS))
   else
      salary=0;
fi
echo "Daily Wage of an Employee= " $salary

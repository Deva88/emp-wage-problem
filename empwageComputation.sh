#!/bin/bash
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
randomCheck=$((RANDOM%3))

case $randomCheck in
         $IS_FULL_TIME)
                empHrs=16
                 ;;
         $IS_PART_TIME) 
               empHrs=8
                ;;
         *)
         empHrs=0
          ;;
esac
salary=$(($empHrs*$EMP_RATE_PER_HR))
echo $salary

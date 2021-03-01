#!/bin/bash

#constants are written in Captital letters only
IS_FULLTIME=1
IS_PARTTIME=2
EMP_RATE_PER_HR=20;
NUMBER_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

#variable
totalEmpHrs=0
totalWorkingDays=0

declare -A dailyWage

function getWorkingHrs()
{
   case $1 in
      $IS_FULLTIME)
         empHrs=8
      ;;
      $IS_PARTTIME)
         empHrs=4
      ;;
      *)
         empHrs=0
      ;;
   esac
   echo $empHrs
}

function getEmpWage()
{
	local empHr=$1
	echo $(($empHr+$EMP_RATE_PER_HR))

}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUMBER_OF_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3))
   empHrs=$( getWorkingHrs $empCheck )
   totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWage["Day "$totalWorkingDays]=$( getEmpWage $empHrs )
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo $totalSalary
echo Daily wages ${dailyWage[@]}
echo All keys ${!dailyWage[@]}

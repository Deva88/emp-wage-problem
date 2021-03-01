#! /bin/bash
IS_PART_TIME=1
IS_FULL_TIME=2
totalSalary=0
EMP_RATE_PER_HR=20
NUM_WORKING_DAY=20

for (( day=1; day<=NUM_WORKING_DAY; day++ ))
do
  empCheck=$((RANDOM%3))
    case $empCheck in
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

    salary=$(( empHrs * EMP_RATE_PER_HR ))
    totalSalary=$(( totalSalary + salary )) 
done 
echo $salary
echo $totalSalary

#!/bin/bash
empCheck=$((RANDOM%2))
isPresent=1
if [ $empCheck -eq $isPresent ]
then
	echo "employee is Present"
else
	echo "Employee is absent"
fi

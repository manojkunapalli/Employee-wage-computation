#!/bin/bash
echo "Welcome to Employee Wage Computation program"

isPresent=1
randomCheck=$(( RANDOM%2 ));
if [ $isPresent -eq $randomCheck ];
then
		echo "Employee is present"
else
		echo "Employee is not present"
fi

echo "calculate Daily employee wages"

wagePerHour=20
hoursPerDay=8

wagePerDay=$(( 20 * 8))

echo "daily employee wages = $wagePerDay"


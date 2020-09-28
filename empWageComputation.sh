#!/bin/bash

echo "Welcome to Employee Wage Computation program"

isPresent=1
randomCheck=$(( 1 + RANDOM % 2 ));
if [ $isPresent -eq $randomCheck ];
then
		echo "Employee is present"
else
		echo "Employee is not present"
fi

isFullTimeEmp=1;
isPartTimeEmp=2;

wagePerHour=20;
salary=0;
totalSalary=0;

empName=emp

echo "calculate wages"

read -p "enter the number of working days = " numDays

for (( days=1; days<=$numDays; days++ ));
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=8;;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=4;;
	esac
	salary=$(( $empHrs * $wagePerHour ))
	echo "salary of $empName on the day $days is $salary"
	totalSalary=$(( $totalSalary + $salary ))
done

echo "total Salary = $totalSalary"

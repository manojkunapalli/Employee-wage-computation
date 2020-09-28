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
echo "calculate wages for a Month"
echo "Day		DailyWages		TotalWages"
getWorkHours () {
days=$1
empHrs=$2
while [ $days -le 20 ] || [ $empHrs -le 100 ]
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=$(( $empHrs + 8 ));;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=$(( $empHrs + 4 ));;
	esac
	salary=$(( $empHrs * $wagePerHour ))
	totalSalary=$(( $totalSalary + $salary ))
	echo "Day $days		$salary			$totalSalary"
	((days++))
done
}

days=1
empHrs=0
getWorkHours $days $empHrs
echo "total Salary = $totalSalary"
echo "working hours = " $empHrs

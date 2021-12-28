#! /bin/bash 

read -p "Enter integer value: " value

if [ $(( value % 2 )) != 0 ]
then
	for (( i=1; i<=$value; i++ ))
	do
		for (( j=$value; j>=i; j-- ))
		do
			echo -n " "
		done
		for (( k=1; k<=i; k++ ))
		do
			echo -n " *"
			temp=`expr $temp + 1`
		done
		echo ""
	done
	
	half=`expr $value - 1`
	for (( i=$half; i>=1; i-- ))
	do
		for (( j=i; j<=$half; j++ ))
		do
			if [ $j == $half ]
			then
				echo -n " "
			fi
			echo -n " "
		done
		for (( k=1; k<=i; k++ ))
		do
			echo -n " *"
			temp=`expr $temp + 1`
		done
		echo ""
	done
else
	for (( i=value; i>=1; i-- ))
	do
		for (( j=1; j<=i; j++ ))
		do
			echo -n "* "
		done
	echo ""
	done
fi
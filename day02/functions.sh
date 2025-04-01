#!/bin/bash

read -p "Enter the age : "  age 
 is_check() {
 
	 local age=$1 

if (( age >= 18 )); 
then 	
	echo "you can go anywhere because your age is ${age}"

 

else 
   echo "you can't go  you anywhere"    	 

fi 

} 


is_check "$age"

#!/bin/bash

read -p "Enter Username :" username 

echo "you enterend ${username} "

sudo useradd -m $username 

echo "New User added"

echo "script : ${0} " 
echo "script :${1} " 



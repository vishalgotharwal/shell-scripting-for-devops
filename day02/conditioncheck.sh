#!/bin/bash

<<DISCLAIMER
This is a multi-line comment.
It will not be executed.
DISCLAIMER

read -p "Enter the name: " name
read -p "Enter the age of ${name}: " age

# Check if the name is "vishal"
if [[ $name == "vishal" ]]; then
    echo "Yes! User is correct."

    # After confirming name, check the age
    if [[ $age -ge 18 ]]; then
        echo "Yes, you can go in the bar."
    elif [[ $age -lt 18 ]]; then
        echo "Hey ${name}, you can't go in the bar because your age is ${age}."
    fi
else
    echo "No, please verify the name details correctly."
fi


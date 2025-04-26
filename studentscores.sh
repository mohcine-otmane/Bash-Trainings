#!/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age

for i in $( seq 1 3); do
    read -p "Enter score "$i" " score[$i]
done

echo "Name: $name"
echo "Age: $age"

echo "Scores: ${score[@]}"
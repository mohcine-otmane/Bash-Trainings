#!/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age

# Declare an array to store scores
declare -a score

for i in $(seq 1 3); do
    read -p "Enter score $i: " score[$i]
done

echo "Name: $name"
echo "Age: $age"

echo "Scores: ${score[@]}"

# Correct variable assignment (no spaces around '=')
file="$1.json"

# Correct the check for file existence
if [ -e "$file" ]; then
    echo "File exists"
else
    cat > "$file" <<EOF
{
    "name": "$name",
    "age": $age,
    "scores": [
        ${score[1]},
        ${score[2]},
        ${score[3]}
    ]
}
EOF
fi

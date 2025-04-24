# Read two numbers and compare them
read n
read m 

if [ "$n" -lt "$m" ]; then
    echo "$n is less than $m"
elif [ "$n" -gt "$m" ]; then
    echo "$n is greater than $m"
else
    echo "$n is equal to $m"
fi

# I guess I am too old for this
echo "Hello, what's your name ?"
read name
echo "What's your age ?"
read age

if [ "$age" -lt 18 ]; then
    echo "Go to your mama kid, $name huh what a funny name"
elif [ "$age" -gt 18 ] && [ "$age" -lt 30 ]; then
    echo "We got ourself a young man, good luck $name"
elif [ "$age" -gt 30 ]; then
    echo "You are too old for this $name"
fi

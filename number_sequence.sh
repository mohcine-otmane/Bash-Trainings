read n 

# Print numbers from 1 to n
for i in $( seq 1 "$n"); do
    echo "$i"
done

# Print squares of numbers from 1 to n

for i in $( seq 1 "$n"); do
    echo "$((i*i))"
done

# Print even numbers from 1 to n
for i in $( seq 2 "$n" 2); do
    echo "$i"
done


# Print the sum of numbers from 1 to n
read n
s=0
for i in $(seq 1 "$n"); do
    s=$((s + i))
done
echo "The sum of numbers from 1 to $n is $s"




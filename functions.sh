# $1 first argument $2 second argument
add() {
    echo $(($1+$2))
}
add 1 5

# Read argument
sayhello() {
    echo "Hello $1"
}
read -p "Enter your name: " name
sayhello "$name"




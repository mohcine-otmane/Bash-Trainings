#!/bin/bash

echo "Updating system..."
sudo apt update

echo "Select Java version to install:"
echo "1) OpenJDK 8"
echo "2) OpenJDK 11"
echo "3) OpenJDK 17"
echo "4) OpenJDK 21"
echo "5) OpenJDK 22"
echo "6) OpenJDK 23"
echo "7) OpenJDK 24"
read -p "Enter choice [1-7]: " choice

case "$choice" in
    1) VERSION="openjdk-8-jdk" ;;
    2) VERSION="openjdk-11-jdk" ;;
    3) VERSION="openjdk-17-jdk" ;;
    4) VERSION="openjdk-21-jdk" ;;
    5) VERSION="openjdk-22-jdk" ;;
    6) VERSION="openjdk-23-jdk" ;;
    7) VERSION="openjdk-24-jdk" ;;
    *) echo "Invalid option"; exit 1 ;;
esac

echo "Installing $VERSION..."
sudo apt install -y "$VERSION"

echo "Setting JAVA_HOME environment variable..."
JAVA_PATH=$(dirname $(dirname $(readlink -f $(which java))))
if ! grep -q "JAVA_HOME" ~/.bashrc; then
    echo "export JAVA_HOME=$JAVA_PATH" >> ~/.bashrc
    echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
    source ~/.bashrc
fi

echo "Java installation completed."
java -version

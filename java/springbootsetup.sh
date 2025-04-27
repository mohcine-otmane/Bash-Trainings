#!/bin/bash

echo "Updating system..."
sudo apt update

if ! java -version &>/dev/null; then
    echo "Java not found. Running autojavasetup.sh..."
    if [ -f "./autojavasetup.sh" ]; then
        chmod +x ./autojavasetup.sh
        ./autojavasetup.sh
    else
        echo "Error: autojavasetup.sh not found."
        exit 1
    fi
else
    echo "Java is already installed."
fi

if ! mvn -v &>/dev/null; then
    echo "Maven not found. Installing Maven..."
    sudo apt install -y maven
else
    echo "Maven is already installed."
fi

if [ ! -d "$HOME/.sdkman" ]; then
    echo "Installing SDKMAN..."
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
else
    echo "SDKMAN is already installed."
fi

if ! command -v spring &>/dev/null; then
    echo "Installing Spring Boot CLI..."
    source "$HOME/.sdkman/bin/sdkman-init.sh"
    sdk install springboot
else
    echo "Spring Boot CLI is already installed."
fi

echo "Setup complete."
echo "Java version:"
java -version
echo "Maven version:"
mvn -v
echo "Spring Boot version:"
spring --version

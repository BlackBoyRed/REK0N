#!/bin/bash
REQUIRED_TOOLS=("nmap" "whatweb" "sublist3r" "nikto" "wapiti")

for TOOL in "${REQUIRED_TOOLS[@]}"; do
    if ! command -v $TOOL &> /dev/null
    then
        echo "$TOOL is not installed. Installing..."
        sudo apt-get install -y $TOOL
    else
        echo "$TOOL is already installed."
    fi
done

#hello world
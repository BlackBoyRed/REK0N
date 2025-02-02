#!/bin/bash

clear

# Function to check and install required tools
check_requirements() {
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
}

# Calling the function to check required tools and nstall 
check_requirements

# Display banner
echo " 
@@@@@@@   @@@@@@@@  @@@  @@@   @@@@@@@@   @@@  @@@  
@@@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@@@@  @@@@ @@@  
@@!  @@@  @@!       @@!  !@@  @@!   @@@@  @@!@!@@@  
!@!  @!@  !@!       !@!  @!!  !@!  @!@!@  !@!!@!@!  
@!@!!@!   @!!!:!    @!@@!@!   @!@ @! !@!  @!@ !!@!  
!!@!@!    !!!!!:    !!@!!!    !@!!!  !!!  !@!  !!!  
!!: :!!   !!:       !!: :!!   !!:!   !!!  !!:  !!!  
:!:  !:!  :!:       :!:  !:!  :!:    !:!  :!:  !:!  
::   :::   :: ::::   ::  :::  ::::::: ::   ::   ::  
 :   : :  : :: ::    :   :::   : : :  :   ::    :   
"

echo
echo

echo "Enter the website you want to recon: "
read a
echo
echo

echo "The results of the nmap scan are stored in nmap_scan_results.txt file"
nmap -p- -sV $a >> nmap_scan_results.txt
echo "Nmap scan successfully completed"
echo

echo "The web Technologies used in the website are stored in whatweb_scan_results.txt"
whatweb $a >> whatweb_scan_results.txt
echo "Whatweb scan successfully completed"
echo
echo 

echo "The common subdomains of the website are stored in sublist3r_scan_results.txt"
sublist3r -d $a >> sublist3r_scan_results.txt
echo "Sublist3r scan successfully completed"
echo
echo

echo "The known webserver vulnerabilities are stored in nikto_scan_results.txt & wapiti_scan_results.txt"
nikto -h $a >> nikto_scan_results.txt
wapiti -u $a >> wapiti_scan_results.txt
echo "Nikto & wapiti scan successfully completed"
echo
echo

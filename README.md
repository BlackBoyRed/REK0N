# REK0N

**REK0N** is an automation script designed for bug bounty hunters and penetration testers. It simplifies the process of scanning and enumerating targets by integrating various widely-used tools into a single workflow.

## Features

REK0N automates the following tasks:
- Scanning for open ports and services using **nmap**
- Subdomain enumeration with **sublist3r**
- Website fingerprinting using **whatweb**
- Vulnerability scanning with **nikto** and **wapiti**

## How It Works

1. The script prompts the user to input a target website or URL.
2. Once provided, REK0N initiates a sequence of scans using the integrated tools.
3. The results are consolidated and presented for easy analysis.

## Tools Used

- **nmap** - Network exploration tool and security/port scanner.
- **sublist3r** - Subdomain enumeration tool.
- **whatweb** - Website fingerprinting tool to identify the technology stack.
- **nikto** - Web server scanner that detects vulnerabilities.
- **wapiti** - Web application vulnerability scanner.

## Installation

To use REK0N, ensure that the following tools are installed on your system:

- nmap
- sublist3r
- whatweb
- nikto
- wapiti

You can install these tools via your package manager (e.g., apt, brew, etc.) or by following their respective installation guides.

Example of installation on Debian/Ubuntu-based systems
```bash

sudo apt install nmap whatweb nikto wapiti
pip install sublist3r
```
## Usage
Clone the repository and navigate to the directory:
```
git clone https://github.com/yourusername/rek0n.git
cd rek0n
```
Run the script:


```
bash REK0N.sh
```
You will be prompted to input your target URL. The script will run the necessary scans and display the output in the .txt files.

## Contributing
Feel free to contribute to REK0N by submitting a pull request or reporting issues. We welcome improvements and new features.


![TechSlate](../../global/images/ts.png)

# Introduction
- Here is a PowerShell script that will check if the required software is installed and install it if it is not present. 
- This script uses the Chocolatey command, which is a package manager for Windows.

# Folder Structure
- install - will contain all the installtion scripts
- uninstall - will contain all the uninstalltion scripts
- test - will contain all the test scripts after installation and uninstallation


# How to Run the script to install devops tools .
- User PowerShell terminal as Administrator
- To run this script, save it to a file (e.g. install-devops-tools.ps1), <br>
- Make it executable with the chmod command (e.g. chmod +x install-devops-tools.ps1). this will grant execution permissions to file <br>
- And then run it with the ./ command (e.g. ./install-devops-tools.ps1).

# What happens
If the script is success, you will see the below list installed
- Chocolatey -- Package & Installation Manager for Windows OS
- Git
- Terraform
- VS Code
- Azure CLI
- DBeaver
- Maven
- Helm
- Postman
- Studio 3T
- Kubectl
- Azure Data Stuido


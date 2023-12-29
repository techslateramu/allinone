# Grant policies to execute for the current user
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser

# Install Chocolatey (if not already installed)
if (-not (Test-Path 'C:\ProgramData\chocolatey\choco.exe')) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Java (OpenJDK)
choco install openjdk -y

# Install Visual Studio Code (VS Code)
choco install vscode -y

# Install Postman
choco install postman -y

# Install Git
choco install git -y

# Install Azure CLI
choco install azure-cli -y

# Install AWS CLI
choco install awscli -y

# Install kubectl
choco install kubernetes-cli -y

# Install DBeaver
choco install dbeaver -y

# Install Maven
choco install maven -y

Write-Host "Testing tools installation completed."

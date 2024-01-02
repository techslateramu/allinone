# Grant policies to execute for the current user
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser

# Check if Chocolatey is installed
$chocolateyInstalled = Get-Command choco -ErrorAction SilentlyContinue

# If Chocolatey is not installed, install it
if (-not $chocolateyInstalled) {
    Write-Output " ***************************** Installing Chocolatey... ***************************** "
    # Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Output " ***************************** Chocolatey installed. ***************************** "
} else {
    Write-Output " ***************************** Chocolatey is already installed. ***************************** "
}

# Install Java (OpenJDK)
$openjdkInstalled = Get-Command java -ErrorAction SilentlyContinue

if (-not $openjdkInstalled) {
    Write-Output " ***************************** Installing Java (OpenJDK)... ***************************** "
    # Install OpenJDK using Chocolatey
    choco install openjdk -y
    Write-Output " ***************************** Java (OpenJDK) installed. ***************************** "
} else {
    Write-Output " ***************************** Java (OpenJDK) is already installed. ***************************** "
}

# Install Visual Studio Code (VS Code)
$vscodeInstalled = Get-Command code -ErrorAction SilentlyContinue

if (-not $vscodeInstalled) {
    Write-Output " ***************************** Installing Visual Studio Code... ***************************** "
    # Install Visual Studio Code using Chocolatey
    choco install vscode -y
    Write-Output " ***************************** Visual Studio Code installed. ***************************** "
} else {
    Write-Output " ***************************** Visual Studio Code is already installed. ***************************** "
}

# Install Postman
$postmanInstalled = Get-Command postman -ErrorAction SilentlyContinue

if (-not $postmanInstalled) {
    Write-Output " ***************************** Installing Postman... ***************************** "
    # Install Postman using Chocolatey
    choco install postman -y
    Write-Output " ***************************** Postman installed. ***************************** "
} else {
    Write-Output " ***************************** Postman is already installed. ***************************** "
}

# Install Git
$gitInstalled = Get-Command git -ErrorAction SilentlyContinue

if (-not $gitInstalled) {
    Write-Output " ***************************** Installing Git... ***************************** "
    # Install Git using Chocolatey
    choco install git -y
    Write-Output " ***************************** Git installed. ***************************** "
} else {
    Write-Output " ***************************** Git is already installed. ***************************** "
}

# Install Azure CLI
$azureCliInstalled = Get-Command az -ErrorAction SilentlyContinue

if (-not $azureCliInstalled) {
    Write-Output " ***************************** Installing Azure CLI... ***************************** "
    # Install Azure CLI using Chocolatey
    choco install azure-cli -y
    Write-Output " ***************************** Azure CLI installed. ***************************** "
} else {
    Write-Output " ***************************** Azure CLI is already installed. ***************************** "
}

# Install AWS CLI
$AWSCliInstalled = Get-Command aws -ErrorAction SilentlyContinue

if (-not $AWSCliInstalled) {
    Write-Output " ***************************** Installing AWS CLI... ***************************** "
    # Install AWS CLI using Chocolatey
    choco install awscli -y
    Write-Output " ***************************** AWS CLI installed. ***************************** "
} else {
    Write-Output " ***************************** AWS CLI is already installed. ***************************** "
}

# Install kubectl
$kubectlInstalled = Get-Command kubectl -ErrorAction SilentlyContinue

if (-not $kubectlInstalled) {
    Write-Output " ***************************** Installing kubectl... ***************************** "
    # Install kubectl using Chocolatey
    choco install kubernetes-cli -y
    Write-Output " ***************************** kubectl installed. ***************************** "
} else {
    Write-Output " ***************************** kubectl is already installed. ***************************** "
}

# Install DBeaver
$dbeaverInstalled = Get-Command dbeaver -ErrorAction SilentlyContinue

if (-not $dbeaverInstalled) {
    Write-Output " ***************************** Installing DBeaver... ***************************** "
    # Install DBeaver using Chocolatey
    choco install dbeaver -y
    Write-Output " ***************************** DBeaver installed. ***************************** "
} else {
    Write-Output " ***************************** DBeaver is already installed. ***************************** "
}

# Install Maven
$mavenInstalled = Get-Command mvn -ErrorAction SilentlyContinue

if (-not $mavenInstalled) {
    Write-Output " ***************************** Installing Maven... ***************************** "
    # Install Maven using Chocolatey
    choco install maven -y
    Write-Output " ***************************** Maven installed. ***************************** "
} else {
    Write-Output " ***************************** Maven is already installed. ***************************** "
}

Write-Host "Testing tools installation completed."

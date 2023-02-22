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

# Check if Git is installed
$gitInstalled = Get-Command git -ErrorAction SilentlyContinue

# If Git is not installed, install it
if (-not $gitInstalled) {
    Write-Output " ***************************** Installing Git... ***************************** "
    # Install Git using Chocolatey
    choco install git -y
    Write-Output " ***************************** Git installed. ***************************** "
} else {
    Write-Output " ***************************** Git is already installed. ***************************** "
}

# Check if Terraform is installed
$terraformInstalled = Get-Command terraform -ErrorAction SilentlyContinue

# If Terraform is not installed, install it
if (-not $terraformInstalled) {
    Write-Output " ***************************** Installing Terraform... ***************************** "
    # Install Terraform using Chocolatey
    choco install terraform -y
    Write-Output " ***************************** Terraform installed. ***************************** "
} else {
    Write-Output " ***************************** Terraform is already installed. ***************************** "
}

# Check if Visual Studio Code is installed
$vscodeInstalled = Get-Command code -ErrorAction SilentlyContinue

# If Visual Studio Code is not installed, install it
if (-not $vscodeInstalled) {
    Write-Output " ***************************** Installing Visual Studio Code... ***************************** "
    # Install Visual Studio Code using Chocolatey
    choco install vscode -y
    Write-Output " ***************************** Visual Studio Code installed. ***************************** "
} else {
    Write-Output " ***************************** Visual Studio Code is already installed. ***************************** "
}

# Check if Azure CLI is installed
$azureCliInstalled = Get-Command az -ErrorAction SilentlyContinue

# If Azure CLI is not installed, install it
if (-not $azureCliInstalled) {
    Write-Output " ***************************** Installing Azure CLI... ***************************** "
    # Install Azure CLI using Chocolatey
    choco install azure-cli -y
    Write-Output " ***************************** Azure CLI installed. ***************************** "
} else {
    Write-Output " ***************************** Azure CLI is already installed. ***************************** "
}

# Check if DBeaver is installed
$dbeaverInstalled = Get-Command dbeaver -ErrorAction SilentlyContinue

# If DBeaver is not installed, install it
if (-not $dbeaverInstalled) {
    Write-Output " ***************************** Installing DBeaver... ***************************** "
    # Install DBeaver using Chocolatey
    choco install dbeaver -y
    Write-Output " ***************************** DBeaver installed. ***************************** "
} else {
    Write-Output " ***************************** DBeaver is already installed. ***************************** "
}

# Check if Azure Data Studio is installed
$azDataStudioInstalled = Get-Command code-insiders -ErrorAction SilentlyContinue

# If Azure Data Studio is not installed, install it
if (-not $azDataStudioInstalled) {
    Write-Output " ***************************** Installing Azure Data Studio... ***************************** "
    # Install Azure Data Studio using Chocolatey
    choco install azuredatastudio -y
    Write-Output " ***************************** Azure Data Studio installed. ***************************** "
} else {
    Write-Output " ***************************** Azure Data Studio is already installed. ***************************** "
}




#Check if Maven is installed
$mavenInstalled = Get-Command mvn -ErrorAction SilentlyContinue

#If Maven is not installed, install it
if (-not $mavenInstalled) {

Write-Output " ***************************** Installing Maven... ***************************** "
# Install Maven using Chocolatey
choco install maven -y
Write-Output " ***************************** Maven installed. ***************************** "
} else {
Write-Output " ***************************** Maven is already installed. ***************************** "
}

#Check if Postman is installed
$postmanInstalled = Get-Command postman -ErrorAction SilentlyContinue

#If Postman is not installed, install it
if (-not $postmanInstalled) {
Write-Output " ***************************** Installing Postman... ***************************** "
# Install Postman using Chocolatey
choco install postman -y
Write-Output " ***************************** Postman installed. ***************************** "
} else {
Write-Output " ***************************** Postman is already installed. ***************************** "
}

#Check if Helm is installed
$helmInstalled = Get-Command helm -ErrorAction SilentlyContinue

#If Helm is not installed, install it
if (-not $helmInstalled) {
Write-Output " ***************************** Installing Helm... ***************************** "
# Install Helm using Chocolatey
choco install kubernetes-helm -y
Write-Output " ***************************** Helm installed. ***************************** "
} else {
Write-Output " ***************************** Helm is already installed. ***************************** "
}

# Check if Studio 3T is installed
$studio3tInstalled = Get-Command studio3t -ErrorAction SilentlyContinue

# If Studio 3T is not installed, install it
if (-not $studio3tInstalled) {
Write-Output " ***************************** Installing Studio 3T... ***************************** "
# Install Studio 3T using Chocolatey
choco install studio3t -y
Write-Output " ***************************** Studio 3T installed. ***************************** "
} else {
Write-Output " ***************************** Studio 3T is already installed. ***************************** "
}

# Check if kubectl is installed
$kubectlInstalled = Get-Command kubectl -ErrorAction SilentlyContinue

# If kubectl is not installed, install it
if (-not $kubectlInstalled) {
Write-Output " ***************************** Installing kubectl... ***************************** "
# Install kubectl using Chocolatey
choco install kubernetes-cli -y
Write-Output " ***************************** kubectl installed. ***************************** "
} else {
Write-Output " ***************************** kubectl is already installed. ***************************** "
}
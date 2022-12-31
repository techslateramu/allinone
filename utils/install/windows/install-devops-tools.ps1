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
    choco install git
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
    choco install terraform
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
    choco install vscode
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
    choco install azure-cli
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
    choco install dbeaver
    Write-Output " ***************************** DBeaver installed. ***************************** "
} else {
    Write-Output " ***************************** DBeaver is already installed. ***************************** "
}

# Check if virtualization is enabled
$virtualizationEnabled = Get-WmiObject -Class Win32_ComputerSystem | Select-Object -ExpandProperty HypervisorPresent

# If virtualization is not enabled, try to enable it
if (-not $virtualizationEnabled) {
    Write-Output " ***************************** Virtualization is not enabled. Attempting to enable it... ***************************** "

    # Enable virtualization in BIOS/UEFI
    bcdedit /set hypervisorlaunchtype auto
    Write-Output " ***************************** Virtualization enabled in BIOS/UEFI. ***************************** "

    # Enable virtualization in Windows features
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
    Write-Output " ***************************** Virtualization enabled in Windows features. ***************************** "
} else {
    Write-Output " ***************************** Virtualization is already enabled. ***************************** "
}

# Check if WSL2 is installed
$wsl2Installed = Get-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux

# If WSL2 is not installed, install it
if (-not $wsl2Installed.State -eq 'Enabled') {
    Write-Output " ***************************** WSL2 is not installed. Installing it... ***************************** "
    # Install WSL2 using the Windows Features dialog
    Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
    # Restart the system to complete the installation
    Restart-Computer
    Write-Output " ***************************** WSL2 installed. ***************************** "
} else {
    Write-Output " ***************************** WSL2 is already installed. ***************************** "
}

# Check if Docker is installed
$dockerInstalled = Get-Command docker -ErrorAction SilentlyContinue

# If Docker is not installed, install it
if (-not $dockerInstalled) {
    Write-Output " ***************************** Docker is not installed. Installing it... ***************************** "
    # Install Docker using Chocolatey
    choco install docker
    # Add the current user to the Docker group
    net localgroup "Docker Users" "$env:USERNAME" /add
    # Restart the Docker service
    Restart-Service docker
    Write-Output " ***************************** Docker installed. ***************************** "
} else {
    Write-Output " ***************************** Docker is already installed. ***************************** "
}

# Run Docker and test it
Write-Output " ***************************** Running Docker and testing it... ***************************** "
docker run hello-world
Write-Output " ***************************** Docker is running and tested successfully. ***************************** "

# Check if Kubernetes is enabled in Docker
$kubernetesEnabled = Get-Service kubelet | Select-Object -ExpandProperty Status

# If Kubernetes is not enabled, enable it and test it
if ($kubernetesEnabled -ne 'Running') {
    Write-Output " ***************************** Enabling Kubernetes in Docker... ***************************** "
    # Enable Kubernetes in Docker
    Enable-WindowsOptionalFeature -Online -FeatureName Containers -All
    # Restart the Docker service
    Restart-Service docker
    Write-Output " ***************************** Kubernetes enabled in Docker. ***************************** "

    # Test Kubernetes in Docker
    Write-Output " ***************************** Testing Kubernetes in Docker... ***************************** "
    kubectl run hello-node --image
}

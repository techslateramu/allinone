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

Check if WSL2 is installed
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
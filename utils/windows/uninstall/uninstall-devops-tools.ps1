# Uninstall Git
if((Get-Command git -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Git is installed. Uninstalling..."
    choco uninstall git -y
    Write-Output "Git has been uninstalled"
}
else{
    Write-Output "Git is not installed. Skipping..."
}

# Uninstall Terraform
if((Get-Command terraform -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Terraform is installed. Uninstalling..."
    choco uninstall terraform -y
    Write-Output "Terraform has been uninstalled"
}
else{
    Write-Output "Terraform is not installed. Skipping..."
}

# Uninstall VS Code
if((Get-Command code -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "VS Code is installed. Uninstalling..."
    choco uninstall vscode -y
    Write-Output "VS Code has been uninstalled"
}
else{
    Write-Output "VS Code is not installed. Skipping..."
}

# Uninstall Azure CLI
if((Get-Command az -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Azure CLI is installed. Uninstalling..."
    choco uninstall azure-cli -y
    Write-Output "Azure CLI has been uninstalled"
}
else{
    Write-Output "Azure CLI is not installed. Skipping..."
}

#Uninstall DBeaver
if((Get-Command DBeaver -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "DBeaver is installed. Uninstalling..."
    choco uninstall DBeaver -y
    Write-Output "DBeaver has been uninstalled"
}
else{
    Write-Output "DBeaver is not installed. Skipping..."
}

# Uninstall Maven
if((Get-Command mvn -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Maven is installed. Uninstalling..."
    choco uninstall maven -y
    Write-Output "Maven has been uninstalled"
}
else{
    Write-Output "Maven is not installed. Skipping..."
}

# Uninstall Helm
if((Get-Command helm -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Helm is installed. Uninstalling..."
    choco uninstall kubernetes-helm -y
    Write-Output "Helm has been uninstalled"
}
else{
    Write-Output "Helm is not installed. Skipping..."
}

# Uninstall Postman
if((Get-Command postman -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Postman is installed. Uninstalling..."
    choco uninstall postman -y
    Write-Output "Postman has been uninstalled"
}
else{
    Write-Output "Postman is not installed. Skipping..."
}

# Uninstall Studio 3T
if((Get-Command Studio3T -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Studio 3T is installed. Uninstalling..."
    choco uninstall Studio3T -y
    Write-Output "Studio 3T has been uninstalled"
}
else{
    Write-Output "Studio 3T is not installed. Skipping..."
}

# Uninstall Kubectl
if((Get-Command kubectl -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Kubectl is installed. Uninstalling..."
    choco uninstall kubectl -y
    Write-Output "Kubectl has been uninstalled"
}
else{
    Write-Output "Kubectl is not installed. Skipping..."
}

# Uninstall Azure Data Studio
if((Get-Command "Azure Data Studio" -ErrorAction SilentlyContinue) -ne $null) {
    Write-Output "Azure Data Studio is installed. Uninstalling..."
    choco uninstall "Azure Data Studio" -y
    Write-Output "Azure Data Studio has been uninstalled"
}
else{
    Write-Output "Azure Data Studio is not installed. Skipping..."
}

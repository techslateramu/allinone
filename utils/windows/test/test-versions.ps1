# Git version
$gitVersion = (git --version)
Write-Output "Git version: $gitVersion"

# Terraform version
$terraformVersion = (terraform --version)
Write-Output "Terraform version: $terraformVersion"

# VS Code version
$codeVersion = (code --version)
Write-Output "VS Code version: $codeVersion"

# Azure CLI version
$azureCliVersion = (az --version)
Write-Output "Azure CLI version: $azureCliVersion"

# DBeaver version
$dbeaverVersion = (DBeaver --version)
Write-Output "DBeaver version: $dbeaverVersion"

# Maven version
$mavenVersion = (mvn -version)
Write-Output "Maven version: $mavenVersion"

# Helm version
$helmVersion = (helm version --short)
Write-Output "Helm version: $helmVersion"

# Postman version
$postmanVersion = (postman --version)
Write-Output "Postman version: $postmanVersion"

# Studio 3T version
$studio3tVersion = (Studio3T --version)
Write-Output "Studio 3T version: $studio3tVersion"

# Kubectl version
$kubectlVersion = (kubectl version --short)
Write-Output "Kubectl version: $kubectlVersion"

# Azure Data Studio version
$azureDataStudioVersion = (azuredatastudio --version)
Write-Output "Azure Data Studio version: $azureDataStudioVersion"

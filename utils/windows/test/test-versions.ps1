$softwareList = @("Git", "Terraform", "Code", "AZ",  "Mvn", "Helm", "Kubectl")

foreach ($software in $softwareList) {
    $installed = Get-Command -Name $software -ErrorAction SilentlyContinue

    if ($installed -ne $null) {
        Write-Host "$software : Yes"
    } else {
        Write-Host "$software : No"
    }
}

Write-Host " ****************************************************************** "
Write-Host " For below tools, please do verify manually "
Write-Host " ****************************************************************** "
Write-Host "Azure Data Studio, DBeaver, Studio 3T, Postman"

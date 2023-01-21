$softwareList = @("Git", "Terraform", "Code", "AZ",  "Maven", "Helm", "Kubectl", "Azure Data Studio","DBeaver", "Studio 3T", "Postman")

foreach ($software in $softwareList) {
    $installed = Get-Command -Name $software -ErrorAction SilentlyContinue

    if ($installed -ne $null) {
        Write-Host "$software : Yes"
    } else {
        Write-Host "$software : No"
    }
}
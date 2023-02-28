![TechSlate](../global/images/ts.png)

# Storage Account Creation through AZ CLI and PowerShell

<br>

## AZ CLI

<br>

 ### AZ Command : Example

- Make sure to install 'az cli' utility - to check run "az version" command
- "az login" - use this command to login to your az account

```
az group create --name <resource_group_name> --location <location>
```
```
az storage account create --name <storage-account-name> --resource-group <resource-group-name> --location <location> --sku <sku-name> --kind <kind-name> --encryption-services <encryption-services>
```

### AZ Command 
```
az group create --name storage-az-cli --location eastus
```
```
az storage account create --name techslate1234 --resource-group storage-az-cli --location eastus --sku Standard_LRS --kind StorageV2 --encryption-services blob --https-only true
```

<hr>
<br>

## POWERSHELL

 ### PowerShell Pre-requisites

- "Install-Module -Name Az" - To install AZ modules in PowerShell
- "Connect-AzAccount" - use this command to login to your az account

 ### PowerShell Command : Example

```
New-AzResourceGroup -Name <resource_group_name> -Location <location>
```

```
New-AzStorageAccount -Name <account_name> -ResourceGroupName <resource_group_name> -Location <location> -SkuName <sku_name> -Kind <kind> -EncryptionServices <services> -EnableHttpsTrafficOnly $true
```

 ### PowerShell Command

```
New-AzResourceGroup -Name storage-az-powershell -Location eastus
```
```
 New-AzStorageAccount -Name techslate12345 -ResourceGroupName storage-az-powershell  -Location eastus -SkuName Standard_LRS -Kind StorageV2 -EncryptionServices blob -EnableHttpsTrafficOnly $true
```

<br>

<hr>

- <account_name>: The name of the storage account.

- <resource_group_name>: The name of the resource group that the storage account will be created in.

- <location>: The location where the storage account will be created (e.g., westus).

- <sku_name>: The name of the storage account SKU (e.g., Standard_LRS).

- <kind>: The type of storage account (e.g., StorageV2).

- <services>: The encryption services to enable for the storage account (e.g., blob).

- $true: A flag that indicates whether to allow only HTTPS traffic to the storage account.


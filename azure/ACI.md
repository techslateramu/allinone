![TechSlate](../global/images/ts.png)

# To create Azure Container Instance, using AZ-CLI, follow below steps


```
resourceGroup=rg-ts-200
location=eastus
storageAccount=stts200rand
containerName=aci-ts-200
image=nginx
containerPort=80

# Create a new resource group
az group create --name $resourceGroup --location $location

# Create a new storage account
az storage account create --name $storageAccount --resource-group $resourceGroup --location $location --sku Standard_LRS

# Create a new Azure Container Instance
az container create --name $containerName --resource-group $resourceGroup --location $location --image $image --ports $containerPort

```

- This script creates a new resource group with the name rg-ts-200, a storage account with the name stts200rand, and an ACI with the name aci-ts-200. The ACI is created with the nginx image and exposes port 80. You can replace the image and containerPort variables with the values you need for your specific use case.



# To create Azure Container Instance, using POWERSHELL, follow below steps


```
$resourceGroup = "rg-ts-201"
$location = "eastus"
$storageAccount = "stts201rand"
$containerName = "aci-ts-201"
$image = "nginx"
$containerPort = 80

# Create a new resource group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create a new storage account
New-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccount -SkuName Standard_LRS -Location $location

# Create a new Azure Container Instance
New-AzContainerGroup -ResourceGroupName $resourceGroup -Name $containerName -Image $image -Port $containerPort


```

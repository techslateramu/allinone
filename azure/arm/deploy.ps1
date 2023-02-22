$resourceGroupName = "rg-ts-5678"
$storageAccountName = "stots5678ksl"
$serviceBusNamespaceName = "sb83740kiabd"
$location = "eastus"

New-AzResourceGroup -Name $resourceGroupName -Location $location

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile template.json `
    -TemplateParameterObject @{
        "resourceGroupName"=$resourceGroupName;
        "storageAccountName"=$storageAccountName;
        "serviceBusNamespaceName"=$serviceBusNamespaceName;
        "location"=$location
    }

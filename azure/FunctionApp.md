## How to use Azure CLI to create a resource group, a storage account, and a function app in the East US location

### Prerequisites

Before you begin, you will need to have the Azure CLI installed on your machine. You can install the Azure CLI by following the instructions in the [Azure CLI documentation](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).

### Creating a resource group

To create a resource group named "rg-ts-portal-123" in the East US location, run the following command:

```
az group create --name rg-ts-portal-123 --location eastus
```

### Creating a storage account

To create a storage account named "st-ts-portal-123" in the resource group, run the following command:

```
az storage account create --name st-ts-portal-123 --resource-group rg-ts-portal-123 --location eastus --sku Standard_LRS
```

This command creates a standard storage account with locally redundant storage (LRS) replication. If you want to use a different SKU or replication option, you can replace the `--sku` parameter with the SKU name and add `--kind <kind>` and `--replication <replication>` parameters to specify the storage account kind and replication option.

### Creating a function app

To create a function app named "fapp-ts-portal-123" in the resource group, using the above storage account, run the following command:

```
az functionapp create --name fapp-ts-portal-123 --resource-group rg-ts-portal-123 --storage-account st-ts-portal-123 --consumption-plan-location eastus

```

Note that we're passing the `st-ts-portal-123` storage account name to the `--storage-account` parameter in this command, so that the function app can use it for its storage needs. We're also creating the function app with a consumption plan, in the East US location, using the `--consumption-plan-location` parameter.

That's it! These commands will create the resource group, storage account, and function app as per your requirements in the East US location.

<br>
<hr>





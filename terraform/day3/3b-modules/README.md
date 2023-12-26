![TechSlate](../../../global/images/ts.png)

# Terraform using modules

https://github.com/techslateramu/TF-Project-4.1

### For code repository of 4.1 project please click on the above link.

# `TF-Project-4.1`

This is the terraform script to create

- Resource Group

- StorageAccount

- FunctionApp

- AppServicePlan

## Folder Structure

- ### **main** 

    `main.tf `-> which has main terraform scripts

    `variables.tf` -> is having all the variables and default values

    `providers.tf` -> is having all the providers required

    `README.md` -> is containing all the help

- ### **modules**  -> will have all the sub folders where respetive modules are written

    `resourcegroup`

    `storageaccount`

    `functionapp`

    `appserviceplan`


## Pre-requisites

- Need to have Azure service principal -> with contributor role is assigned

- Set below envirnment variables `ARM_TENANT_ID` , `ARM_SUBSCRIPTION_ID` , `ARM_CLIENT_ID` , `ARM_CLIENT_SECRET`  


## Terraform commands

- Run all the terraform commands from tf_main folder
- No need to import/reference. With in the folder, terraform understands and reads all the .tf files
---------

    terraform init
---------
    terraform validate
---------
    terraform plan
---------
    terraform apply
---------
    terraform destroy


## Description & Notes


- ### Create a resource group module first and call it in main.tf .

- ### Create a module for storage account, function app, appserviceplan etc

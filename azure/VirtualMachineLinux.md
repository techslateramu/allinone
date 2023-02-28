![TechSlate](../global/images/ts.png)s

# Virtual Machine Creation through AZ CLI and PowerShell

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
az vm create --resource-group <resource_group_name> --name myVM --image <image_name> --admin-username <adminuser> --generate-ssh-keys
```

### AZ Command 
```
az group create --name vm-linux-az-cli --location eastus
```
```
az vm create --resource-group vm-linux-az-cli --name linuxvm-using-azcli --image UbuntuLTS --admin-username azureuser --generate-ssh-keys
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
New-AzVm -ResourceGroupName <resource_group_name> -Name <vm_name> -ImageName <image_name> -Username <username> -SSHKeyPath "$HOME\.ssh\id_rsa.pub"
  ```

 ### PowerShell Command

```
New-AzResourceGroup -Name storage-az-powershell -Location eastus
```
```
New-AzVm -ResourceGroupName vm-linux-ps -Name linuxvm-using-azcli  -ImageName UbuntuLTS -Username azureuser -SSHKeyPath "$HOME\.ssh\id_rsa.pub"
```

<br>

<hr>

In this example:

- myResourceGroup is the name of the resource group.
- eastus is the location for the resource group.
- myVM is the name of the virtual machine.
- UbuntuLTS is the image used for the virtual machine.
- azureuser is the admin username for the virtual machine.
- The -SSHKeyPath option specifies the public key file for authentication, which is used to log into the virtual machine. In this case, it assumes that the public key is stored in the default ~/.ssh/id_rsa.pub location.
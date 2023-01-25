# Introduction

This is the help page to install docker in windows machine 


# How To 

## Step 1 : Install WSL
- Install WSL or make sure you have WSL Installed your machine.


## Step 2 : WSL to PATH
- Add WSL path to env variable i.e. PATH


## Step 3 : Download
- Download Docker Desktop and Install it


## Step 4 :  How to verify
- Open Powershell Terminal and run below command

``` 
docker run -p 80:80 nginx 
``` 

- Open broweser and enter url "localhost:80", you should welcome to nginx page


# Double Check (if errors) : 
- Verify whether Hypervisor is enabled or not.

``` 
Get-WmiObject -Class Win32_ComputerSystem | Select-Object -ExpandProperty HypervisorPresent
``` 
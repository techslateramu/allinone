# Introduction

This is the help page to install docker in windows machine 


# How To 

## Step 1 : Install WSL

**Install WSL or make sure you have WSL Installed your machine.**

### 1. **Lets first check if we have WSL installed in our system , by typing the below command in Powershell (Run as Administrator)** ###

**```wsl --list --verbose```**

![WSL check](images/powershell.png)

### 2. **If WSL is not installed in our system , lets install by following the below steps :** ###
  
- **Click the below link , which will direct you to Microsfot Document**

   https://learn.microsoft.com/en-us/windows/wsl/install-manual

![WSL check](images/Microsoftdoc.png)

- **Directly Jump to 4th step! and click on the WSL2 Linux kernel update package for x64 machines.**

![WSL check](images/downloadWSL.png)

- **You can see WSL Package Downloading.**

![WSL check](images/downloading.png)

***

## Step 2 : WSL to PATH

- **Add WSL path to env variable i.e. PATH**

1. **Go to the file location of **wsl_update_x64** and copy the path of it .**

![WSL check](images/location.png)

2. **Add the path to System Environment variables .**

   ### Open the Edit the system environment variables.
![WSL check](images/env.png)

***
   ### Click on Environment Variables .
![WSL check](images/env-var.png)

***
   ### Click on Path and then Click on Edit .
![WSL check](images/edit.png)

***
   ### Click on New and paste the path there . Click on OK.
![WSL check](images/addpath.png)

***

## Step 3 : Download

- **Download Docker Desktop and Install it.**

1. **Go to your favourite Browser, and type "Docker Desktop".**

![WSL check](images/Dockerdesktop.png)

2. **According to your computer Operating system click on respective OS**

![WSL check](images/DockerOS.png)

3. **You can see Docker Desktop Downloading , it will take some time to download.**

![WSL check](images/downloaddocker.png)

4. **Once it is downloaded , click on the Docker Desktop , it will start installing**

![WSL check](images/pack.png)

**Docker Desktop Installed Succesfully. Click on Close..**

![WSL check](images/installed.png)

5. **Now ,Open your Docker Desktop , You can see Docker Running**

![WSL check](images/Running.png)


***


## Step 4 :  How to verify
- **Open Powershell Terminal and run below command**

``` 
docker run -d -p 80:80 docker/getting-started 
``` 
![WSL check](images/dockerrun.png)

- **Open browser and enter url "localhost:80".**

![WSL check](images/localhost.png)

- **You should see Getting Started page Appearing.**

![WSL check](images/gettingstarted.png)


***
# Double Check (if errors) : 
- Verify whether Hypervisor is enabled or not.

``` 
Get-WmiObject -Class Win32_ComputerSystem | Select-Object -ExpandProperty HypervisorPresent
``` 
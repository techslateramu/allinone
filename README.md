![TechSlate](global/images/ts.png)

# Introduction 

## Allinone repository consists of all the modules scripts which are used in entire program .


# Modules

|  S.No    |       Topic            | 
|  ----    |------------------------|
| 01       |      Ado-Pipelines     |
| 02       |      Azure             |
| 03       |      Best-Practices    |
| 04       |      Docker            |
| 05       |      Error-codes       |
| 06       |      git               |
| 07       |      Interview-questions|
| 08       |      Kubernetes        |
| 09       |      Linux             |
| 10       |      Python            |
| 11       |      Terraform         |
| 12       |      Utils             |



# Docker  concepts covered

|  S.No    |       Topic            |       Link           |
|  ----    |------------------------|------------------------|
| 01       |    Docker-commands     |[Docker Commands ](docker/docker-commands/README.md) |
| 02       |    Docker-run          |[Running Images ](docker/docker-run/README.md) |
| 03(001)  |    Docker-compose      |[sonar-single-image](docker/docker-compose/001-sonar-single-image/docker-compose.yml) |
| 03(002)  |    Docker-compose      |[Setup Sonarqube with Postgres database using docker-compose](docker/docker-compose/002-sonar-with-postgres/README.md) |
| 03(003)  |    Docker-compose      |[Creating Orange HRM using Docker Compose file.](docker/docker-compose/003-orange-hr-appplication/README.md)
| 03(004)  |    Docker-compose      |[Setup Grafana with Prometheus using docker-compose](docker/docker-compose/004-grafana-with-prometheus/README.md)
| 03(005)  |    Docker-compose      |[Creating Jenkins using Docker Compose file.](docker/docker-compose/005-jenkins/README.md)
| 03(006)  |    Docker-compose      |[Creating RabbitMQ using Docker Compose file.](docker/docker-compose/006-rabbit-mq/README.md)
| 04       |    Dockerfile          |[General instructions](docker/dockerfile/000-General/DockerfileInstructions.md)
| 04(001)  |    Dockerfile          |[HTML-Web-app](docker/dockerfile/001-html-web-app/README.md)
| 04(002)  |    Dockerfile          |[Python-backedn-app](docker/dockerfile/002-python-backend-app/README.md)
| 05(001.a)|    Docker-storage      |[How to run mysql image with storage](docker/docker-storage/001-mysql/mysql-with-storage/README.md)
| 05(001.b)|    Docker-storage      |[How to run mysql image without storage](docker/docker-storage/001-mysql/mysql-without-storage/README.md)
| 05(002.a)|    Docker-storage      |[How to run mongo image with storage](docker/docker-storage/002-mongo/mongo-with-storage/README.md)
| 05(002.b)|    Docker-storage      |[How to run mongo image without storage](docker/docker-storage/002-mongo/mongo-without-storage/README.md)
| 06       |    Docker-sample-apps  |[sample apps](docker/docker-sample-apps/)





# Azure  concepts covered

|  S.No    |       Topic            |       Link           |
|  ----    |------------------------|------------------------|
| 01       |    Azure-cli-commands  |[Here are 50 commonly used Azure CLI commands ](azure/azure-cli-commands.md) |
| 02       |      FunctionApp       |[How to use Azure CLI to create a resource group, a storage account, and a function app in the East US location](azure/FunctionApp.md) |
| 03       |     AzureContainerInstance|[To create Azure Container Instance, using AZ-CLI](azure/ACI.md) |
| 04       | Resourcegroup & Storage Account|[Storage Account Creation through AZ CLI and PowerShell](azure/StorageAccount.md)
| 05       |      Virtual Machine      |[Virtual Machine Creation through AZ CLI and PowerShell](azure/VirtualMachineLinux.md)
| 06       |      WebAPP              |[To create webapp (app-service), using AZ-CLI](azure/WebApp.md)
| 07       |      ARM                 |[ARM template](azure/arm/README.md)
| 08       |      Project             |[Create app service](azure/project/proj001.ps1)


# Git commands

|  S.No    |       Topic            |       Link           |
|  ----    |------------------------|------------------------|
| 01       |    Git-commands     |[Git Commands ](git/README.md) |


# Linux

|  S.No    |       Topic            |       Link           |
|  ----    |------------------------|------------------------|
| 01       |    Linux- commands     |[40 common Linux commands ](linux/commands/README.md) |
| 01.a     |    LinuxAdminCommands  |[LinuxAdminCommands ](linux/commands/LinuxAdminCommands.md) |
| 01.b     |    ViEditor            |[VI Commands ](linux/commands/ViEditor.md) |
| 02.a     |    ShellScripts        |[To write a shell script to add two numbers](linux/shellscripts/add/README.md) |
| 02.b     |    ShellScripts        |[Here is a simple script that takes a number as input and determines whether it is prime or not](linux/shellscripts/isprimenumber/README.md) |

# Kubernetes concepts covered

|S.No| Topic| Link |
|---------------------------|------------------------------------|------------------------------------------------------------------|
|000| Kubernetes Commands|[Kubernetes Cheatsheet](k8s/000-k8s-commands/README.md) |
|001| Single-pods| [How to run a single k8s pod ?](k8s/001-single-pods/001a-nginx-pod/README.md) |
|002| multi-container-pods| [How to run multiple k8s pods ?](k8s/002-multi-container-pods/README.md) |
|003| Deployments| [How to run a Deployment?](k8s/003-deployments/003b-jenkins/README.md) |
|004| Services| [How to run k8s Services ?](k8s/004-services/004b-jenkins/README.md) |
|005| Ingress| [How to run ingress ?](k8s/005-ingress/005a-jenkins-ingress/README.md) |
|006| Storage-config-secrets| [How to create Storage ,ConfigMap , Secret in k8s ?](k8s/006-storage-config-secrets/006a-jenkins-secrets/README.md) |
|007| Projects| [This is a mini project of K8S, which deploys few services listed below and connect them through ingress.](k8s/007-projects/001-custom/README.md) |



# Terraform concepts covered

|S.No                | Topic         | Link |
|----------------    |---------------|-------|
|DAY1| Create Azure Resource Group and Storage Account|[Terraform Script: Create Azure Resource Group and Storage Account](terraform/day1/1a_rg_st/README.md) |
|DAY1| Create Azure Resource Group and Storage Account using Variables| [Terraform Script: Create Azure Resource Group and Storage Account using Variables](terraform/day1/1b_rg_st_using_vars/README.md) |
|DAY1 | Create Azure Resource Group and Storage Account using locals | [Terraform Script: Create Azure Resource Group and Storage Account using locals](terraform/day1/1c_rg_st_using_locals/README.md) |
|DAY1| Create Azure Resource Group and Storage Account using Outputs | [Terraform Script: Create Azure Resource Group and Storage Account using Outputs](terraform/day1/1d_rg_st_using_outputs/README.md) |
|DAY2| Exploring local state file by creating Resource group , storage account and servicebus.  | [Terraform Script: Exploring local state file by creating Resource group , storage account and servicebus.](terraform/day2/2a-local-state-file/README.md) |
|DAY2|  Creating remote state file using backend.tf by creating Resource group , storage account and servicebus.  | [Terraform Script: Creating remote state file using backend.tf by creating Resource group , storage account and servicebus.](terraform/day2/2b-remote-state/README.md) |
|DAY3| Terraform with env management  | [Terraform with env management](terraform/day3/3a-env/README.md) |
|DAY3| Terraform using modules | [Terraform with env management](terraform/day3/3b-modules/README.md) |
|DAY4| Sample projects| [Links of 4 Sample Projects](terraform/day4/README.md) |



# utils

S.No| Topic | Link |
|---|---------|-------------|
|01| mac installation | [How to Run the script to install devops tools](/allinone/utils/mac/README.md) |
|02| Windows installation| [How to Run the script to install devops tools ](/allinone/utils/windows/README.md) |



# Error-Codes

S.No| Topic | Link |
|---|---------|-------------|
|01| HTTP Status codes| [What is HTTP Status Code?](error-codes/README.md) |


# Best-Practices

|S.No| Topic | Link |
|----|---------|-------------|
|01  | Azure Devops Best Prctices| [Creating the perfect Azure DevOps culture for best practice](best-practises/AzureDevOps.md) |
|02  | Docker Best Prctices | [ Docker Compose-Best Practices ](best-practises/Docker.md) |
|03  | Kubernetes Best Prctices | [Kubernetes Best Practices](best-practises/kubernetes.md) |
|04  | Terraform Best Prctices  | [Terraform Best Practices](best-practises/Terraform.md) |



# Interview Questions

|S.No | Topic     | Link        |                                               
|-----|-----------|-------------|
|01| Git  | [ Git Interview Questions](interview-que/Git.md) |
|02| Linux | [ Linux Interview Questions](interview-que/Linux.md) |
|03| DevOps | [ DevOps Interview Questions](interview-que/DevOps.md) |
|04| Docker | [ Docker Interview Questions](interview-que/Docker.md) |
|05| K8S | [ K8S Interview Questions](interview-que/K8s.md) |
|06| Azure | [ Azure Interview Questions](interview-que/Azure.md) |
|07| Terraform | [Terraform Interview Questions](interview-que/Terraform.md) |
|08| Azure DevOps| [Azure DevOps Interview Questions](interview-que/AzureDevOps.md) |

# ADO-Pipelines concepts covered
-
-
-
-
-


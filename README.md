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
| 13       |      Terraform-with-aws|



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



# Default Ports

S.No| Topic | Link |
|---|---------|-------------|
|01| Default Ports| [Default Ports](default-ports/README.md) |

# Error-Codes

S.No| Topic | Link |
|---|---------|-------------|
|01| HTTP Status codes| [What is HTTP Status Code?](error-codes/README.md) |


# Best-Practices

|S.No| Topic | Link |
|----|---------|-------------|
|01  | Azure Devops Best Practices| [Creating the perfect Azure DevOps culture for best practice](best-practices/AzureDevOps.md) |
|02  | Docker Best Practices | [ Docker Compose-Best Practices ](best-practices/Docker.md) |
|03  | Kubernetes Best Practices | [Kubernetes Best Practices](best-practices/kubernetes.md) |
|04  | Terraform Best Practices  | [Terraform Best Practices](best-practices/Terraform.md) |
|05  | DevOps Principles  | [DevOps Principles](best-practices/DevOps_Principles.md) |
|06  | Git Best Practices | [Git Best Practices](best-practices/Git.md) |
|07  | DevOps Best Practices | [DevOps Best Practices](best-practices/DevOps.md) |


# Python

|S.No| Topic | Link |
|----|---------|-------------|
|01  | 01-string-reverse| [python script on string-reverse](python/01-string-reverse/README.md) |
|02  | 02-palindrome_check| [python script on palindrome_check](python/02-palindrome_check/README.md) |
|03  | 03-fibonacci_series | [python script on fibonacci_series](python/03-fibonacci_series/README.md) |
|04  | 04-primenumber-check | [python script on primenumber-check](python/04-primenumber-check/README.md) |
|05  | 05-factorial | [python script on factorial](python/05-factorial/README.md) |
|06  | 06-sum_of_digits | [python script on sum_of_digits](python/06-sum_of_digits/README.md) |
|07  | 07-armstrong_number | [python script on armstrong_number](python/07-armstrong_number/README.md) |
|08  | 08-binary_to_decimal_conversion | [python script on binary_to_decimal_conversion](python/08-binary_to_decimal_conversion/README.md) |
|09  | 09-bubble-sort | [python script on bubble-sort](python/09-bubble-sort/README.md) |
|10  | 10-merge_sort | [python script on merge_sort](python/10-merge_sort/README.md) |
|11  | 11-kubernetes_cluster | [python script on kubernetes_cluster](python/11-kubernetes_cluster/README.md) |


# Python with k8s

|S.No| Topic | Link |
|----|---------|-------------|
|01  | 01-flask_application| [python script on 01-flask_application](python_with_k8s/01-flask_application) |
|02  | 02-palindrome_check| [python script on 02-Kubernetes_Pod_health](python/02-Kubernetes_Pod_health/README.md) |
|03  | 03-fibonacci_series | [python script on fibonacci_series](python/03-fibonacci_series/README.md) |
|04  | 04-primenumber-check | [python script on primenumber-check](python/04-primenumber-check/README.md) |
|05  | 05-factorial | [python script on factorial](python/05-factorial/README.md) |
|06  | 06-sum_of_digits | [python script on sum_of_digits](python/06-sum_of_digits/README.md) |
|07  | 07-armstrong_number | [python script on armstrong_number](python/07-armstrong_number/README.md) |
|08  | 08-binary_to_decimal_conversion | [python script on binary_to_decimal_conversion](python/08-binary_to_decimal_conversion/README.md) |
|09  | 09-bubble-sort | [python script on bubble-sort](python/09-bubble-sort/README.md) |
|10  | 10-merge_sort | [python script on merge_sort](python/10-merge_sort/README.md) |
|11  | 11-kubernetes_cluster | [python script on kubernetes_cluster](python/11-kubernetes_cluster/README.md) |


# Interview Questions

|S.No | Topic     | Link        |                                               
|-----|-----------|-------------|
|01| Git  | [ Git Interview Questions](interview-questions/Git.md) |
|02| Linux | [ Linux Interview Questions](interview-questions/Linux.md) |
|03| DevOps | [ DevOps Interview Questions](interview-questions/DevOps.md) |
|04| Docker | [ Docker Interview Questions](interview-questions/Docker.md) |
|05| K8S | [ K8S Interview Questions](interview-questions/K8s.md) |
|06| Azure | [ Azure Interview Questions](interview-questions/Azure.md) |
|07| Terraform | [Terraform Interview Questions](interview-questions/Terraform.md) |
|08| Azure DevOps| [Azure DevOps Interview Questions](interview-questions/AzureDevOps.md) |

# ADO-Pipelines concepts covered

|S.No | Topic     | Link        |                                               
|-----|-----------|-------------|
|01| Day 1 | [ ADO - 6.1.3a - DEMO - Pipelines](ado-pipelines/README.md) |
|02| Day 2 | [ ADO - 6.2.2 - TF  - ACI - Calc](ado-pipelines/README.md) |
|03| Day 2 | [ ADO - 6.2.3 - TF - ACI - Color](ado-pipelines/README.md) |
|04| Day 2 | [ ADO - 6.2.4 - TF-Infra-WebApp](ado-pipelines/README.md) |
|05| Day 3 | [ADO - 6.3.1a - Dotnet-WebApp-LocalRun](ado-pipelines/README.md) |
|06| Day 3 | [ADO - 6.3.1b - Dotnet-WebApp-Pipeline](ado-pipelines/README.md) |
|07| Day 4 | [ADO - 6.4.1 - Tempaltes & Env Management](ado-pipelines/README.md) |
|08| Day 4 | [ADO - 6.4.3 - Jenkins Infra & Pipelines](ado-pipelines/README.md) |

# Terraform-with-aws topics covered

|S.No | Topic     | Link        |                                               
|-----|-----------|-------------|
|DAY1| Create AWS S3 Bucket|[Terraform Script: Create AWS S3 Bucket](terraform-with-aws/day1/1a_s3/README.md) |
|DAY1| Create Azure S3 Bucket using Variables| [Terraform Script: Create S3 Bucket using Variables](terraform-with-aws/day1/1b_s3_using_vars/README.md) |
|DAY1 | Create S3 Bucket using locals | [Terraform Script: Create S3 Bucket using locals](terraform-with-aws/day1/1c_s3_using_locals/README.md) |
|DAY1| Create S3 Bucket using Outputs | [Terraform Script: Create S3 Bucket using Outputs](terraform-with-aws/day1/1d_s3_using_outputs/README.md) |
|DAY2| Create AWS S3 Bucket,lambda,beanstalk using localsatate | [Terraform Script: Create AWS S3 Bucket,lambda,beanstalk using localsatate](/terraform-with-aws/day2/2a-local-state-file/README.md) |
|DAY2| Create AWS S3 Bucket,lambda,beanstalk using Remotesatate | [Terraform Script: Create AWS S3 Bucket,lambda,beanstalk using Remotesatate](terraform-with-aws/day2/2b-remote-state/README.md) |
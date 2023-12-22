![TechSlate](../../global/images/ts.png)

# Introduction 

This page contains the links of all sub sections of day1 Terraform .

## What is Terraform?

- Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

- HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

## What is Resource Group?

- An Azure Resource Group is a logical container for resources deployed on the Microsoft Azure cloud platform. It acts as a way to manage and organize related Azure resources. Resources within a resource group can include virtual machines, storage accounts, virtual networks, web apps, databases, and more.

## What is Storage Account?

- An Azure Storage account is a Microsoft Azure service that provides highly scalable and secure cloud storage for various types of data. It serves as a central place to store and manage different types of data such as blobs, files, queues, tables, and disks. Azure Storage is a fundamental building block for many cloud-based applications and services.

## What are variables in Terraform?

- The variables.tf file is used to declare and define variables that will be used in your Terraform configuration files (typically with a .tf extension). These variables can represent values that may change between environments, configuration settings, or any other dynamic input.

## What are locals in Terraform?

- locals.tf is a Terraform configuration file where you define local values or variables to simplify and centralize expressions used in your Terraform code. This file helps improve readability, maintainability, and reduces redundancy by providing a single place to manage and update common values or calculations used across your infrastructure-as-code project.

## What are outputs in Terraform?

- In terraform outputs are used to define output values that are exposed to users or other Terraform configurations when they consume your module. Outputs provide a way to share information about the infrastructure you've deployed, making it accessible to other parts of your Terraform code or to external systems.


 ![Terraform](images/assets.png)


# Details and Links of the Sections 

|S.No                | Topic         | Link |
|----------------    |---------------|-------|
|DAY1| 1a_rg_st|[Creating Azure Resource Group and Storage Account](1a_rg_st/README.md) |
|DAY1| 1b_rg_st_using_vars|[Creating Azure Resource Group and Storage Account using Variables](1b_rg_st_using_vars/README.md) |
|DAY1 | 1c_rg_st_using_locals|[Creating Azure Resource Group and Storage Account using locals](1c_rg_st_using_locals/README.md) |
|DAY1| 1d_rg_st_using_outputs|[Creating Azure Resource Group and Storage Account using Outputs](1d_rg_st_using_outputs/README.md) |
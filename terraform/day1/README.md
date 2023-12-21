![TechSlate](../global/images/ts.png)

# Introduction 

This page contains the links of all sub sections of day1 Terraform .

## What is Terraform?

- Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

- HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

## What is Resource Group?

- A resource group is a logical container used in cloud computing environments to organize and manage related resources. It is a fundamental concept in cloud platforms such as Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP). The purpose of a resource group is to simplify the management and organization of resources that belong to a specific application, project, or workload.

## What is Storage Account?

- A storage account is a fundamental construct in cloud computing platforms like Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP). It serves as a logical container for storing and managing various types of data, including blobs, files, queues, tables, and disks. Each cloud provider may have slight variations in the types of storage services offered, but the concept of a storage account remains consistent.

## What is variables.tf file?

- The variables.tf file is used to declare and define variables that will be used in your Terraform configuration files (typically with a .tf extension). These variables can represent values that may change between environments, configuration settings, or any other dynamic input.

## What is locals.tf file?

- The use of locals.tf helps to keep your main configuration cleaner and more focused on resource definitions, while complex expressions or computations are encapsulated in the locals block. It also enhances code maintainability by allowing you to make changes in one place (the locals.tf file) rather than scattered throughout the main configuration.

## What is outputs.tf file?

- In Terraform, an outputs.tf file is used to define output values that are exposed to users or other Terraform configurations when they consume your module. Outputs provide a way to share information about the infrastructure you've deployed, making it accessible to other parts of your Terraform code or to external systems.


# Details and Links of the Sections 

|S.No                | Topic         | Link |
|----------------    |---------------|-------|
|DAY1| 1a_rg_st|[Creating Azure Resource Group and Storage Account](1a_rg_st/README.md) |
|DAY1| 1b_rg_st_using_vars|[Creating Azure Resource Group and Storage Account using Variables](1b_rg_st_using_vars/README.md) |
|DAY1 | 1c_rg_st_using_locals|[Creating Azure Resource Group and Storage Account using locals](1c_rg_st_using_locals/README.md) |
|DAY1| 1d_rg_st_using_outputs|[Creating Azure Resource Group and Storage Account using Outputs] (1d_rg_st_using_outputs/README.md) |

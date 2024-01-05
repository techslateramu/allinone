![TechSlate](../../global/images/ts.png)

# Introduction 

This file contains the links of all the exercises of day1 Terraform with AWS.

## What is ``Terraform``?

- Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

- HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

## **What is ``Amazon S3 Bucket``** ?

- Amazon S3 is a scalable and highly durable object storage service provided by Amazon Web Services (AWS). It is designed to store and retrieve any amount of data from anywhere on the web. S3 is widely used for various purposes, including data storage, backup, archival, content distribution, and hosting static websites. A bucket is the fundamental container in Amazon S3 for storing data. Each bucket has a globally unique name within the S3 namespace.

## What are ``variables``in Terraform?

- The variables are used to declare and define variables that will be used in your Terraform configuration files (typically with a .tf extension). These variables can represent values that may change between environments, configuration settings, or any other dynamic input.

## What are ``locals`` in Terraform?

- locals are a Terraform configuration file where you define local values or variables to simplify and centralize expressions used in your Terraform code. This file helps improve readability, maintainability, and reduces redundancy by providing a single place to manage and update common values or calculations used across your infrastructure-as-code project.

## What are ``outputs`` in Terraform?

- outputs in terraform are used to define output values that are exposed to users or other Terraform configurations when they consume your module. Outputs provide a way to share information about the infrastructure you've deployed, making it accessible to other parts of your Terraform code or to external systems.


|S.No                | Topic         | Link |
|----------------    |---------------|-------|
|DAY1| 1a_s3|[Creating AWS s3 Bucket](1a_s3) |
|DAY1| 1b_s3_using_vars|[Creating AWS s3 Bucket using Variables](1b_s3_using_vars) |
|DAY1 | 1c_s3_using_locals|[Creating AWS s3 Bucket using locals](1c_s3_using_locals) |
|DAY1| 1d_s3_using_outputs|[Creating AWS s3 Bucket using Outputs](1d_s3_using_outputs) |
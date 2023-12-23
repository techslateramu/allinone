![TechSlate](../global/images/ts.png)

# Introduction 

Thi is the home page containing links to all sub sections of Terraform .

## What is Terraform?

- Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

- HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

## How does Terraform work?

- Terraform creates and manages resources on cloud platforms and other services through their application programming interfaces (APIs). Providers enable Terraform to work with virtually any platform or service with an accessible API.


- HashiCorp and the Terraform community have already written thousands of providers to manage many different types of resources and services. You can find all publicly available providers on the Terraform Registry, including Amazon Web Services (AWS), Azure, Google Cloud Platform (GCP), Kubernetes, Helm, GitHub, Splunk, DataDog, and many more.

- The core Terraform workflow consists of three stages:

1. **Write**: You define resources, which may be across multiple cloud providers and services. For example, you might create a configuration to deploy an application on virtual machines in a Virtual Private Cloud (VPC) network with security groups and a load balancer.

2. **Plan**: Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.

3. **Apply**: On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies. For example, if you update the properties of a VPC and change the number of virtual machines in that VPC, Terraform will recreate the VPC before scaling the virtual machines.







# Details and Links of the Sections 

|S.No                | Topic         | Link |
|----------------    |---------------|-------|
|DAY1| Create AWS S3 Bucket|[Terraform Script: Create AWS S3 Bucket](day1/1a_s3/README.md) |
|DAY1| Create AWS S3 Bucket using vars|[Terraform Script: Create AWS S3 Bucket using vars](day1/1b_s3_using_vars/README.md) |
|DAY1| Create AWS S3 Bucket using locals|[Terraform Script: Create AWS S3 Bucket using locals](day1/1c_s3_using_locals/README.md) |
|DAY1| Create AWS S3 Bucket using outputs|[Terraform Script: Create AWS S3 Bucket using outputs](day1/1d_s3_using_outputs/README.md) |
|DAY2| Create AWS S3 Bucket,lambda,beanstalk using localsatate|[Terraform Script: Create AWS S3 Bucket,lambda,beanstalk using localsatate](day2/2a-local-state-file/README.md) |
|DAY2| Create AWS S3 Bucket,lambda,beanstalk using Remotesatate|[Terraform Script: Create AWS S3 Bucket,lambda,beanstalk using Remotesatate](day2/2b-remote-state/README.md) |
|DAY3| Create AWS S3 Bucket,lambda,dynamodb using terraform env|[Terraform Script: Create AWS S3 Bucket,lambda,dynamodb using terraform env](day3/3a-env/README.md) |
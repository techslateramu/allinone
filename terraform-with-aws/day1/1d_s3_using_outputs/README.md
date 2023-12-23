![TechSlate](../../../global/images/ts.png)

# Create S3 with AWS Terraform

## Introduction

This Terraform script create AWS S3 Bucket. Amazon Simple Storage Service (Amazon S3) is a scalable object storage service provided by Amazon Web Services (AWS). It is designed to store and retrieve any amount of data from anywhere on the web. S3 is a fundamental building block of cloud computing and is widely used for various purposes, including data storage, backup and recovery, website hosting, and big data analytics.

## Pre-Requisites

 [Create an AWS account](../../../aws/aws-account-creation/README.md)

 [Create a IAM user and create access keys](../../../aws/aws-user-creation/README.md)
 
 #### If you haven't installed Terraform, download and install it from the official Terraform website.

 #### Install AWS CLI

## Getting Started

To use this Terraform script, you'll need to have the following:

- AWS_ACCESS_KEY_ID : An Access Key ID is a unique identifier associated with an AWS (Amazon Web Services) user account that has programmatic access enabled. It is used to authenticate and authorize requests made to AWS services.

- AWS_SECRET_ACCESS_KEY : An Secret Access Key is a confidential key that is paired with the Access Key ID to authenticate requests made to AWS services.

- AWS_DEFAULT_REGION : is an environment variable that can be set to define the default AWS region for AWS CLI


### Setup Environment Variables

```
export AWS_ACCESS_KEY_ID="VALUE_OF_ACCESS_KEY_ID"
export AWS_SECRET_ACCESS_KEY="VALUE_OF_SECRET_ACCESS_KEY"
export AWS_DEFAULT_REGION="VALUE_OF_DEFAULT_REGION"
```


- Run above command in bash shell to set Environment Variables


![aws1](https://github.com/techslateramu/allinone/assets/123730077/8855f072-58c4-4c47-8a2c-e2d41a8c5a22)


## ( Already If you have created Environment variables please ignore , and move to the next step )


## Usage


- Open the `s3_main.tf` file and edit the following variables as needed:

## `s3_main.tf`
```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name
  acl    = var.acl

  tags = var.tags

  versioning {
    enabled = var.versioning_enabled
  }

  force_destroy = var.force_destroy
}


```


- Open the `s3_var.tf` file and edit the following variables as needed:


## `s3_var.tf`

```

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {
    Name = "My bucket"
  }
}

variable "acl" {
  description = "The access control list (ACL) for the S3 bucket"
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "environment" {
  type        = string
  description = "The environment in which the application is being deployed. For example, 'prod' or 'dev'."
  default     = "dev"
}

variable "force_destroy" {
  description = "Destroy all objects in the S3 bucket when the bucket is destroyed"
  type        = bool
  default     = false
}
```

- Open the `s3_local.tf` file and edit the following variables as needed:

```
locals {
  org_name             = "ts"  
 bucket_name = "${local.org_name}-tech-s3-${var.acl}-${var.environment}"
  
}
```

- Open the `s3_outputs.tf` file and edit the following variables as needed:

```
output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}

output "s3_bucket_region" {
  value = aws_s3_bucket.bucket.region
}

output "s3_bucket_domain_name" {
  value = aws_s3_bucket.bucket.bucket_domain_name
}

output "s3_bucket_website_endpoint" {
  value = aws_s3_bucket.bucket.website_endpoint
}

```

# Terraform Commands

- ### Initialize

```
terraform init
```

![s3_1](https://github.com/techslateramu/allinone/assets/123730077/96554fb1-238f-4c5e-a15b-7a9bed82ca9c)


***

- ### Validate

```
terraform validate
```

![s3_2](https://github.com/techslateramu/allinone/assets/123730077/be3adda4-2707-40cb-a52a-d479c21a5295)


- ### Plan

```
terraform plan
```

![s3_3](https://github.com/techslateramu/allinone/assets/123730077/ffe9875c-f31b-4719-927f-e4f3deb42cc6)


- ### Apply

```
terraform apply
```

![s3_4](https://github.com/techslateramu/allinone/assets/123730077/1083058c-0002-462d-8ec4-911f0d8a7c94)


- you can observe output displayed in below image


![s3_5](https://github.com/techslateramu/allinone/assets/123730077/c71b9e66-9c75-4a78-87db-bb8a8fb96c97)


- ### Lets check the portal

![s3_6](https://github.com/techslateramu/allinone/assets/123730077/15838c4c-0fd6-4ff7-a33f-69aee6745a35)


- ###  Destroy

```
terraform destroy
```

![s3_7](https://github.com/techslateramu/allinone/assets/123730077/d41c5d4a-663b-4ac2-b505-7faf3728ec03)

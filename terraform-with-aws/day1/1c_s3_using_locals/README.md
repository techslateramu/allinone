![TechSlate](../../../global/images/ts.png)

# Create S3 with AWS Terraform

## Introduction

This Terraform script create AWS S3 Bucket. Amazon Simple Storage Service (Amazon S3) is a scalable object storage service provided by Amazon Web Services (AWS). It is designed to store and retrieve any amount of data from anywhere on the web. S3 is a fundamental building block of cloud computing and is widely used for various purposes, including data storage, backup and recovery, website hosting, and big data analytics.

## Pre-Requisites

- Create an AWS account (link)
- Create a IAM user and create access keys (link)
- If you haven't installed Terraform, download and install it from the official Terraform website.
- Install AWS CLI

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

# Terraform Commands

- ### Initialize

```
terraform init
```

![s3_1](https://github.com/techslateramu/allinone/assets/123730077/25c63074-ed3b-42e5-999e-79286e5c9793)


***

- ### Validate

```
terraform validate
```

![s3_2](https://github.com/techslateramu/allinone/assets/123730077/085ab48e-8a16-4b03-8be5-55647bc6f5da)


- ### Plan

```
terraform plan
```

![s3_3](https://github.com/techslateramu/allinone/assets/123730077/ea3a31da-9bf3-4222-b104-70822cc64a23)


- ### Apply

```
terraform apply
```

![s3_4](https://github.com/techslateramu/allinone/assets/123730077/9c8d54cf-594b-461f-9381-46e2281767bf)


- ### Lets check the portal


![s3_5](https://github.com/techslateramu/allinone/assets/123730077/c84b62d9-16ec-4867-83fc-94785bab2faf)

- we can see name of bucket is taken from locals

- ###  Destroy

```
terraform destroy
```

![s3_6](https://github.com/techslateramu/allinone/assets/123730077/45e2286d-dbe0-4aaf-9dbb-3cbc0bf23826)

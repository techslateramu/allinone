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
  bucket = var.bucket_name
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
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "techslate-s3-bucket4233"
}

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

variable "force_destroy" {
  description = "Destroy all objects in the S3 bucket when the bucket is destroyed"
  type        = bool
  default     = false
}
```

# Terraform Commands

- ### Initialize

```
terraform init
```

![s3_1](https://github.com/techslateramu/allinone/assets/123730077/7a169e19-99bc-4983-acc9-2af0b0a891af)


***

- ### Validate

```
terraform validate
```

![s3_2](https://github.com/techslateramu/allinone/assets/123730077/1a48c738-4059-42e3-8c69-ca512a24ab2b)


- ### Plan

```
terraform plan
```

![s3_3](https://github.com/techslateramu/allinone/assets/123730077/090025da-50dc-450e-8f2f-3617e1ca1c59)


- ### Apply

```
terraform apply
```

![s3_4](https://github.com/techslateramu/allinone/assets/123730077/c5fdbefa-e57b-4cb5-9e16-01bdd31ca736)



![s3_5](https://github.com/techslateramu/allinone/assets/123730077/75189ca4-caab-4d8a-8b6e-ed374eb32a50)


- ### Lets check the portal

![s3_6](https://github.com/techslateramu/allinone/assets/123730077/ac8b2ac3-f229-4c1f-a6f6-cf06a10949ff)

- ###  Destroy

```
terraform destroy
```

![s3_7](https://github.com/techslateramu/allinone/assets/123730077/5facaab1-4df7-4c0a-94c1-eaa5069bf739)

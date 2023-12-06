![TechSlate](../../../global/images/ts.png)

# Create S3 with AWS Terraform

## Introduction

This Terraform script create AWS S3 Bucket. Amazon Simple Storage Service (Amazon S3) is a scalable object storage service provided by Amazon Web Services (AWS). It is designed to store and retrieve any amount of data from anywhere on the web. S3 is a fundamental building block of cloud computing and is widely used for various purposes, including data storage, backup and recovery, website hosting, and big data analytics.

## prerequisites

- create an AWS account (link)
- create a IAM user and create access keys (link)
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


## Usage

### Create a Terraform Configuration File

- Create a file named main.tf with the following content:

## main.tf

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
  bucket = "techslate-s3-bucket123"

  tags = {
    Name        = "My bucket"
  }
}

```

- make sure change the bucket name as it need to be globally unique.

## Terraform Commands


-  ### Initialize

```
terraform init
```



![aws2](https://github.com/techslateramu/allinone/assets/123730077/01a5859d-69ac-4b61-b0ca-9387e86c152d)



- ### Validate


```
terraform validate
```


![aws3](https://github.com/techslateramu/allinone/assets/123730077/6fee94e3-ab50-487e-b77a-1856e796bc44)



- ### Plan


```
terraform plan
```


![aws4](https://github.com/techslateramu/allinone/assets/123730077/ea8f79a7-f4b4-4d64-9ff6-6afdfb406284)



![aws5](https://github.com/techslateramu/allinone/assets/123730077/5b25ac7f-ad07-4f5c-ad14-8b75f9213466)



- ### Apply


```
terraform apply
```


![aws6](https://github.com/techslateramu/allinone/assets/123730077/4ce9043e-a110-472c-b785-69c270920c37)


![aws7](https://github.com/techslateramu/allinone/assets/123730077/47838ea1-0380-43d1-8f02-2cccb6f3443c)


![aws8](https://github.com/techslateramu/allinone/assets/123730077/74f7777a-bce4-4989-b29c-e5b165844300)



- ## Now , you can go back to your portal and see if your S3 is created.


![aws9](https://github.com/techslateramu/allinone/assets/123730077/bb6cde3d-75d9-44b4-a8e5-de6c1af70dc4)



- ###  Destroy

```
terraform destroy
```


![aws10](https://github.com/techslateramu/allinone/assets/123730077/765e3b7c-22e4-4235-a044-4e85010e17b1)

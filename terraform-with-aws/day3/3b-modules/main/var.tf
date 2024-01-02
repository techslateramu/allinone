variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "techslate-s3-bucket6758"
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

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "example_table"  

} 

variable "billing_mode" {
  description = "Billing mode for the DynamoDB table (PROVISIONED or PAY_PER_REQUEST)"
  type        = string
  default     = "PROVISIONED"  

}

variable "read_capacity" {
  description = "Read capacity for the DynamoDB table"
  type        = number
  default     = 5  
}

variable "write_capacity" {
  description = "Write capacity for the DynamoDB table"
  type        = number
  default     = 5  
}
variable "lambda_function_name" {
  description = "Name of the Lambda function"
}

variable "python_zip_source_dir" {
  description = "Source directory for the Python code"
  default     = "../python/"
}


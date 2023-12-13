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

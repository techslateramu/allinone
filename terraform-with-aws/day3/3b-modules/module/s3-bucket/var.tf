
variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "acl" {
  description = "The access control list (ACL) for the S3 bucket."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the S3 bucket."
  type        = map(string)
}

variable "versioning_enabled" {
  description = "Indicates whether versioning is enabled for the S3 bucket."
  type        = bool
}

variable "force_destroy" {
  description = "Set to true to delete all objects from the bucket when destroying it."
  type        = bool
}

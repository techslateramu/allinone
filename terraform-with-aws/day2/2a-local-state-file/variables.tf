locals {
  org_name             = "ts"  
 bucket_name = "${local.org_name}-s3-${var.s3_prefix}-${var.env}-${var.bnst_prefix}"
 beanstalk_name = "${local.org_name}-bnst_123-${var.s3_prefix}-${var.env}-${var.bnst_prefix}"
}



variable "env" {
  type        = string
  description = "The environment in which the application is being deployed. For example, 'prod' or 'dev'."
  default     = "dev"
}

variable "s3_prefix" {
  type  = string
  default = "tech"
}

variable "bnst_prefix" {
  type  = string
  default = "4233"
}


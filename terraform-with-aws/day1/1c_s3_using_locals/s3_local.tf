locals {
  org_name             = "ts"  
 bucket_name = "${local.org_name}-tech-s3-${var.acl}-${var.environment}"
  
}

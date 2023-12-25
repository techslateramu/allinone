module "aws_s3_bucket" {
  source = "../module"

  bucket_name        = var.bucket_name
  acl                = var.acl
  tags               = var.tags
  versioning_enabled = var.versioning_enabled
  force_destroy      = var.force_destroy
}
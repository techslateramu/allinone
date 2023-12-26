resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = var.acl

  tags = var.tags

  versioning {
    enabled = var.versioning_enabled
  }

  force_destroy = var.force_destroy
}
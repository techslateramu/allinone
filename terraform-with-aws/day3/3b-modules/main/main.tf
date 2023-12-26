module "aws_s3_bucket" {
  source = "../module/s3-bucket"

  bucket_name        = var.bucket_name
  acl                = var.acl
  tags               = var.tags
  versioning_enabled = var.versioning_enabled
  force_destroy      = var.force_destroy
}

module "example_dynamodb" {
  source        = "../module/dynamodb"  
  table_name    = var.table_name
  billing_mode  = var.billing_mode
  read_capacity = var.read_capacity
  write_capacity = var.write_capacity
}

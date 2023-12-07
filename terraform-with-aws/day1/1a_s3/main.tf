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
output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}

output "s3_bucket_region" {
  value = aws_s3_bucket.bucket.region
}

output "s3_bucket_domain_name" {
  value = aws_s3_bucket.bucket.bucket_domain_name
}

output "s3_bucket_website_endpoint" {
  value = aws_s3_bucket.bucket.website_endpoint
}

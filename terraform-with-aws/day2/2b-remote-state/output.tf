output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
output "lambda_function_arn" {
  value = aws_lambda_function.hello.arn
}
output "elastic_beanstalk_application_name" {
  value = aws_elastic_beanstalk_application.tftest.name
}
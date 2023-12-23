output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
output "lambda_function_arn" {
  value = aws_lambda_function.hello.arn
}

output "table_name" {
  value = aws_dynamodb_table.dynamodb.name
}

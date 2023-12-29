variable "lambda_function_name" {
  description = "Name of the Lambda function"
}

variable "python_zip_source_dir" {
  description = "Source directory for the Python code"
  default     = "../python/"
}

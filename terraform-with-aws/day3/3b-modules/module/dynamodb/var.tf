variable "table_name" {
  type        = string
  description = "Name of the DynamoDB table"
}

variable "billing_mode" {
  type        = string
  description = "Billing mode for DynamoDB table"
}

variable "read_capacity" {
  type        = number
  description = "Read capacity for DynamoDB table"
}

variable "write_capacity" {
  type        = number
  description = "Write capacity for DynamoDB table"
}

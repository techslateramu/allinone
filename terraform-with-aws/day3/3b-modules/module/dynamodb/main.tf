resource "aws_dynamodb_table" "example" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  hash_key = "id"

  attribute {
    name = "id"
    type = "N"
  }
}

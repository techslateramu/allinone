# Define variables
variable "location" {
  type        = string
  description = "The Azure region in which to deploy resources."
  default     = "uksouth"
}

variable "app_name" {
  type        = string
  description = "The name of the application."
  default     = "app"
}

variable "environment" {
  type        = string
  description = "The environment in which the application is being deployed. For example, 'prod' or 'dev'."
  default     = "dev"
}

variable "index" {
  type        = number
  description = "A unique index to differentiate between multiple instances of the same application."
  default     = 1
}

variable "account_replication_type" {
  type        = string
  description = "The replication type of the storage account. For example, 'LRS'."
  default     = "LRS"
}

variable "account_tier" {
  type        = string
  description = "The tier of the storage account. For example, 'Standard'."
  default     = "Standard"
}


# Define variables
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to create."
  default     = "example-rg"
}

variable "location" {
  type        = string
  description = "The location of the resource group and storage account. For example, 'eastus'."
  default     = "eastus"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account to create."
  default     = "examplestorageaccount"
}

variable "account_tier" {
  type        = string
  description = "The tier of the storage account. For example, 'Standard'."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "The replication type of the storage account. For example, 'LRS'."
  default     = "LRS"
}
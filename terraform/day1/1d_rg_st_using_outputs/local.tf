# Define locals
locals {
  org_name = "ts"  
  resource_group_name = "${local.org_name}-rg-${var.location}-${var.app_name}-${var.environment}-${format("%02d", var.index)}"
  storage_account_name = "${local.org_name}st${var.app_name}${var.environment}${format("%02d", var.index)}"
}
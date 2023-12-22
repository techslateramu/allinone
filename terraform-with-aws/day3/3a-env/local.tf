locals {
  org_name             = "ts"  
 bucket_name = "${local.org_name}-s3-234-${var.s3_prefix}-${var.env}-${var.bnst_prefix}"
 lambda_name = "${local.org_name}-lambda_123-${var.s3_prefix}-${var.env}-${var.bnst_prefix}"
 function_name = "${local.org_name}-lamfun_123-${var.s3_prefix}-${var.env}-${var.bnst_prefix}"
 table_name  = "${local.org_name}-dyna_123-${var.s3_prefix}-${var.env}-${var.bnst_prefix}"
}



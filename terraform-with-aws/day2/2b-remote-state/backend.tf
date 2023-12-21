terraform {
    backend "s3" {
        bucket = "bucket-state23"
        key = "global/mystatefile/terraform.tfstate"
        region ="us-east-1"
        encrypt = true
    }
}
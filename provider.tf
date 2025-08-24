terraform {
  required_version = ">= 1.5.0"
  backend "s3" {
    bucket         = "terraform-backend-bucket-123"
    key            = "project29/terraform.tfstate"
    region         = "us-east-1"     # ✅ fix here
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}


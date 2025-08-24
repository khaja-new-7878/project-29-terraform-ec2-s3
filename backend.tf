# terraform {
#  backend "s3" {
#    bucket         = "project29-s3-bucket-123"
#    key            = "project29/terraform.tfstate"
#    region         = "us-east-1"
#    dynamodb_table = "terraform-locks"   # ✅ keep this
#    encrypt        = true
#  }
# }


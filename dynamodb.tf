resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks-p29"   # ✅ New unique name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "terraform-state-locks"
  }
}


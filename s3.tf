resource "aws_s3_bucket" "project_bucket" {
  bucket = "project29-s3-bucket-123"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "project29-s3"
  }
}


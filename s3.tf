resource "aws_s3_bucket" "project29_bucket" {
  bucket = "project29-s3-bucket-123"

  tags = {
    Name = "project29-s3"
  }
}

resource "aws_s3_bucket_acl" "project29_acl" {
  bucket = aws_s3_bucket.project29_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "project29_versioning" {
  bucket = aws_s3_bucket.project29_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_bucket" "project29_bucket" {
  bucket = "project29-s3-bucket-123-ap-south-1"
}

resource "aws_s3_bucket_versioning" "project29_versioning" {
  bucket = aws_s3_bucket.project29_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}


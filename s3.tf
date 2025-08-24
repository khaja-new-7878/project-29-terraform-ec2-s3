resource "aws_s3_bucket" "project29_bucket" {
  bucket = "project29-s3-bucket-123"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "project29-s3"
  }
}

# Attach a policy so Terraform can use it as backend
resource "aws_s3_bucket_policy" "project29_bucket_policy" {
  bucket = aws_s3_bucket.project29_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::841932493636:root"
        }
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:ListBucket"
        ]
        Resource = [
          "arn:aws:s3:::project29-s3-bucket-123",
          "arn:aws:s3:::project29-s3-bucket-123/*"
        ]
      }
    ]
  })
}


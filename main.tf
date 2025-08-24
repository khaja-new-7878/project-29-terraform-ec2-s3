resource "aws_instance" "example" {
  ami           = "ami-0eac8046c099936b0"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "project29-s3-bucket-123"
  aws_s3_bucket_acl    = "private"

  tags = {
    Name = "Terraform-S3"
  }
}

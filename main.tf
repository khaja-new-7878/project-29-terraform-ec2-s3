resource "aws_instance" "example" {
  ami           = "ami-0eac8046c099936b0"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "mohid-terraform-s3-demo-12345"
  acl    = "private"

  tags = {
    Name = "Terraform-S3"
  }
}

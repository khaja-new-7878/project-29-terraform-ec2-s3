resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI in us-east-1
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

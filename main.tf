resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}


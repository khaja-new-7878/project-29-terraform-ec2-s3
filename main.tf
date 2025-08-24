resource "aws_instance" "example" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}


resource "aws_instance" "example" {
  ami           = "ami-0eac8046c099936b0"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}


resource "aws_instance" "example" {
  ami           = "ami-03f4878755434977f"   # Amazon Linux 2 AMI for ap-south-1
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}


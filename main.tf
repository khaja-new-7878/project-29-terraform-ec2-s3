# Fetch the latest Amazon Linux 2 AMI dynamically
data "aws_ami" "amazon_linux2" {
  most_recent = true
  owners      = ["841932493636"] # Amazon official account ID

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Example EC2 instance
resource "aws_instance" "example" {
  ami           = data.aws_ami.amazon_linux2.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name      = "project-3"

  user_data = file("userdata.sh")

  tags = {
    Name = "Terraform-EC2"
  }
}

output "example_ec2_public_ip" {
  value = aws_instance.example.public_ip
}


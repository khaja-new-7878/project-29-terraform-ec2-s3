resource "aws_security_group" "ec2_sg" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "project29_ec2" {
  ami                    = "ami-03f4878755434977f"   # Amazon Linux 2 AMI for ap-south-1
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = "Project-3"           # ⚠️ Make sure this key exists in ap-south-1

  user_data = file("userdata.sh")

  tags = {
    Name = "project29-web"
  }
}

output "ec2_public_ip" {
  value = aws_instance.project29_ec2.public_ip
}


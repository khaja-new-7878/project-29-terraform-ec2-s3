# Fetch latest Amazon Linux 2 AMI dynamically
data "aws_ami" "amazon_linux2" {
  most_recent = true
  owners      = ["841932493636"] # Amazon official account

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


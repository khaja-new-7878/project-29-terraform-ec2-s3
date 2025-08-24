# Fetch the latest Amazon Linux 2 AMI dynamically
data "aws_ami" "amazon_linux2" {
  most_recent = true
  owners      = ["841932493636"] # Amazon official account ID

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]  # General purpose volumes
  }

  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


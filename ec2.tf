resource "aws_instance" "project29_ec2" {
  ami           = data.aws_ami.amazon_linux2.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name      = "project-3"

  user_data = file("userdata.sh")

  tags = {
    Name = "project29-web"
  }
}

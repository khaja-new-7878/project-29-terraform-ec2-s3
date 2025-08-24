output "project29_ec2_public_ip" {
  value = aws_instance.project29_ec2.public_ip
}

output "project29_ec2_dns" {
  value = aws_instance.project29_ec2.public_dns
}


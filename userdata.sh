#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hello from Terraform EC2 $(hostname)" > /var/www/html/index.html


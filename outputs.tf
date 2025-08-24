output "s3_bucket_name" {
  value = aws_s3_bucket.project29_bucket.bucket
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_locks.name
}

output "ec2_public_ip" {
  value = aws_instance.project29_ec2.public_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}


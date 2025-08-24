# Output for the S3 bucket name
output "s3_bucket_name" {
  value = aws_s3_bucket.project29_bucket.bucket
}

# Output for DynamoDB table name
output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_locks.name
}

# Output for example EC2 instance
output "example_ec2_public_ip" {
  value = aws_instance.example.public_ip
}

# Output for project29 EC2 instance
output "project29_ec2_public_ip" {
  value = aws_instance.project29_ec2.public_ip
}


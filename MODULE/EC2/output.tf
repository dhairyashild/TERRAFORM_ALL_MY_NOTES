# outputs.tf

output "instance_id" {
  description = "The ID of the EC2 instance."
  value       = aws_instance.instance.id
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance."
  value       = aws_instance.instance.public_ip
}

output "security_group_id" {
  description = "The security group ID."
  value       = aws_security_group.instance_sg.id
}

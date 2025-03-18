# main.tf



resource "aws_instance" "instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  user_data     = data.template_file.user_data.rendered
  key_name = var.key_name
  iam_instance_profile = var.instance_profile

  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.instance.id
}

output "instance_public_ip" {
  value = aws_instance.instance.public_ip
}

output "security_group_id" {
  value = aws_security_group.instance_sg.id
}

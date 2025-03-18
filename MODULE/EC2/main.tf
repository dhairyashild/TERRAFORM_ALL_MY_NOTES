# main.tf

data "template_file" "user_data" {
  template = file(var.user_data_script)
}

resource "aws_instance" "instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
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

data "aws_instance" "myawsinstance" {
  filter {
    name   = "tag:Name"
    values = ["Terraform EC2"]
  }

  depends_on = [aws_instance.ec2_example]
}


output "fetched_info_from_aws" {
  value = data.aws_instance.myawsinstance.public_ip 
}

# step1- it creates pub and pvt key both. its like applying ssh-keygen -t rsa -b 4096
resource "tls_private_key" "rsa-4096-example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# step2-it adds PUBLIC key on AWS console keylist
resource "aws_key_pair" "deployer" {
  key_name   = "key-terraform"              ####this keyname use in aws_instance resource
  public_key = tls_private_key.rsa-4096-example.public_key_openssh
}

# step3-it stores pvt key ur local pc 
resource "local_file" "foo" {
  content  = tls_private_key.rsa-4096-example.private_key_pem
  filename = "mykey"                           #### this is pvt key download on ur pc
}

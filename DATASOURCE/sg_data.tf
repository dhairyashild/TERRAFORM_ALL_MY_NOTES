data "aws_security_group" "web" {
  name = "web-server-sg"
}

#resource "aws_instance" "app" {
#  vpc_security_group_ids = [data.aws_security_group.web.id]
# # ... other configurations ...
#}

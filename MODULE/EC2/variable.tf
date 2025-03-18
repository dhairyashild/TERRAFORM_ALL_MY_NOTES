# variables.tf

variable "instance_type" {
  type        = string
  description = "The EC2 instance type."
  default     = "t3.medium"
}

variable "ami_id" {
  type        = string
  description = "The AMI ID to use."
}

variable "instance_name" {
  type        = string
  description = "The name of the EC2 instance."
}

variable "subnet_id" {
  type        = string
  description = "The subnet ID to launch the instance in."
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID."
}

variable "user_data_script" {
  type        = string
  description = "Path to the user data script template."
  default     = "user_data.tpl"
}

variable "key_name" {
    type = string
    description = "The key pair name"
    default = ""
}

variable "instance_profile" {
  type = string
  description = "instance profile name"
  default = ""
}

variable "security_group_ids" {
  type = list(string)
  description = "List of security group IDs to associate with."
}

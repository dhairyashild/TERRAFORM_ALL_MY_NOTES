#   THESE ARE ALL RANDOM RESOURCE EXAMPLE GIVEN BELOW 
#  DEVOPS NEED MOSTLY
       1) random_id.log_id.hex                            --- s3 bucket name --- remember id need hex  to fetch
       2) dev-${random_pet.instance_name.id}              --- for instance tag name --- remember pet need id
      3) random_password.db_password.result --- RDS master password




#################################################
resource "random_id" "example_id" {
  byte_length = 8 # The number of random bytes to generate (determines the length of the hex string)
}

output "random_id_output" {
  value = random_id.example_id.hex # The generated ID in hexadecimal format
}  ====================
Outputs:
random_id_output = "a1b2c3d4e5f67890"




resource "aws_s3_bucket" "log_bucket" {
  bucket = "secure-app-logs-${random_id.log_id.hex}"
  # ... other bucket configurations ...
}
resource "random_id" "log_id" {
  byte_length = 8
}
output "log_bucket_name" {
  value = aws_s3_bucket.log_bucket.id
}



#########################################################

resource "random_integer" "example_int" {
  min = 1   # The minimum value of the integer (inclusive)
  max = 100 # The maximum value of the integer (inclusive)
}

output "random_integer_output" {
  value = random_integer.example_int.result # The randomly generated integer
}======================
Outputs:
random_integer_output = 42

#########################################################

resource "random_password" "example_password" {
  length           = 16        # The desired length of the password
  special          = true      # Whether to include special characters
  override_special = "!@#%^&*" # A custom set of special characters to use (if special is true)
}

output "random_password_output" {
  value = random_password.example_password.result # The generated random password
}====================
Outputs:
random_password_output = "aB1cD-eF2gH!iJ3kL%"




resource "aws_rds_cluster" "app_db" {
  cluster_identifier      = "app-database"
  engine                  = "aurora-mysql"
  master_username         = "admin"
  master_password         = random_password.db_password.result
  # ... other RDS configurations ...
}
resource "random_password" "db_password" {
  length    = 20
  special   = true
  numeric   = true
  upper     = true
  lower     = true
}

output "rds_master_password" {
  value     = random_password.db_password.result
  sensitive = true # Mark as sensitive to prevent output in plain text
}
#########################################################

resource "random_pet" "example_pet" {
  length = 2 # The number of words in the pet name
}

output "random_pet_output" {
  value = random_pet.example_pet.id # The generated random pet name
}====================
Outputs:
random_pet_output = "fluffy-tiger"





resource "aws_ec2_instance" "dev_instance" {
  ami           = "ami-xxxxxxxxxxxxxxxxx"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-${random_pet.instance_name.id}"
  }
}

resource "random_pet" "instance_name" {
  length = 3
}

output "dev_instance_public_ip" {
  value = aws_ec2_instance.dev_instance.public_ip
}

#########################################################
resource "random_shuffle" "example_shuffle" {
  input = ["apple", "banana", "cherry", "date"] # The list of strings to shuffle
  seed  = "some-seed"                         # An optional seed value for consistent shuffling
}

output "random_shuffle_output" {
  value = random_shuffle.example_shuffle.result # The shuffled list of strings
}====================
Outputs:
random_shuffle_output = ["cherry", "banana", "apple", "date"]



#########################################################

resource "random_string" "example_string" {
  length      = 10    # The desired length of the random string
  lower       = true  # Whether to include lowercase letters
  upper       = false # Whether to include uppercase letters
  numeric     = true  # Whether to include numeric characters
  special     = false # Whether to include special characters
}

output "random_string_output" {
  value = random_string.example_string.result # The generated random string
}====================
Outputs:
random_string_output = "b7g2k9p0x3"



#########################################################
resource "random_uuid" "example_uuid" {} # No arguments are typically needed for a basic UUID

output "random_uuid_output" {
  value = random_uuid.example_uuid.result # The generated universally unique identifier (UUID)
}======================
Outputs:
random_uuid_output = "f8bca3a2-9d1c-4e5a-8b3f-1c9d5a2b8e7f"



#########################################################
















































































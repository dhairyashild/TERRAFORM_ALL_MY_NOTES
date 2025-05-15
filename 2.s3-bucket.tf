resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "your-terraform-state-bucket" # Replace with your desired bucket name
  #  acl    = "private"                  #  Optional:  Defaults to private, but you can be explicit
  versioning {                         #  Enable versioning.  RECOMMENDED for state files.
    enabled = true
  }

  server_side_encryption_configuration {  #  Enable default server-side encryption
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"      #  Use AES-256 encryption
      }
    }
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "production" # Or whatever environment this is for
  }
}

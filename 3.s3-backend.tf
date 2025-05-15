terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"  # The name of the S3 bucket where Terraform state will be stored.
    key            = "path/to/my/terraform.tfstate"  # The path within the S3 bucket to the state file.
    region         = "us-east-1"                    # The AWS region where the S3 bucket is located.
    dynamodb_table = "terraform-state-locking"    # The name of the DynamoDB table used for state locking.
    encrypt        = true                         #  Enables server-side encryption for the state file in S3.
  }
}

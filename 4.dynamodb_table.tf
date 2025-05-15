resource "aws_dynamodb_table" "terraform_state_locking" {
  name           = "terraform-state-locking" #  Name of the DynamoDB table.  Must be unique.
  billing_mode   = "PAY_PER_REQUEST"        #  How you are charged for read/write. PAY_PER_REQUEST is recommended for state locking.
  hash_key       = "LockID"                 #  The name of the partition key.  MUST be "LockID" for Terraform.

  attribute {
    name = "LockID"                     #  The name of the attribute that is the partition key.  Must match hash_key.
    type = "S"                        #  The data type of the LockID attribute.  MUST be "S" (String).
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  #  profile = "your-aws-profile" # Optional:  Specify an AWS CLI profile if needed
  #  assume_role {             # Optional:  For assuming an IAM role
  #    role_arn = "arn:aws:iam::123456789012:role/your-role"
  #  }
}

# Summary:

# required_providers:  Specifies the providers your Terraform configuration depends on, including the source (registry) and version constraints.
# provider "aws":        Configures the settings for the specified provider (in this case, AWS), such as the region.
# Version Constraints:  The `version = "~> 5.0"`  constraint helps manage provider upgrades.  It allows Terraform to install versions compatible with 5.0, but not 6.0 or higher.  This helps prevent breaking changes.
# Provider Upgrades:    Terraform uses the version constraint to determine if a provider upgrade is allowed.  You can change the version constraint and run `terraform init -upgrade` to update.  Review your `.tf` files for any necessary code changes after upgrading.
#  AWS Configuration:   The `provider "aws"` block is where you configure how Terraform interacts with AWS.  You can specify the region, authentication methods (like profiles or assuming roles), and other settings.
# Video Link:  https://www.youtube.com/watch?v=Jj0M6waGJVw  

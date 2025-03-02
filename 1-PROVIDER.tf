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
}






#In summary:

#required_providers: Specifies the provider and version.  
#provider "aws": Configures the provider's settings, such as the region.
#3 it wont allow to upgrade/dwngrade provider version —so if u want tpo upgrade then delete this file then update
#4 if u upgrade version then CHECK code in .tf files also for changes, there are certain code changes as per each new provider upgrade

#video link
https://www.youtube.com/watch?v=Jj0M6waGJVw

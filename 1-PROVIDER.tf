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


#video link
https://www.youtube.com/watch?v=Jj0M6waGJVw

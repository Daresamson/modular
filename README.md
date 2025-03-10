# PROJECT 2
# we can use this explanation to takecare of our project2
since we a source of change there will be changes. 
the   *main.tf file*  will be this

module "s3-static-website" {
  source  = "cn-terraform/s3-static-website/aws"
  version = "1.0.9"

  bucket_name    = "your-unique-bucket-name"  # Replace with your unique bucket name
  index_document = "index.html"                 # The entry point of your static website
}


The provider file will be this

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2" # Replace with your desired region
}



#


THIS IS MAIN.tf

module "s3-static-website" {
  source  = "cn-terraform/s3-static-website/aws"
  version = "1.0.9"

  bucket_name    = "your-unique-bucket-name"  # Replace with your unique bucket name
  index_document = "index.html"                 # The entry point of your static website
}









# THIS IS PROVIDER.TF

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

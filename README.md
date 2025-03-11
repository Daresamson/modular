# PROJECT 2

![Screenshot (57)](https://github.com/user-attachments/assets/216fe16f-87ba-4ea9-9572-9595d33be162)
![Screenshot (58)](https://github.com/user-attachments/assets/73254f63-125e-472d-8833-5ef03ea08efa)

![Screenshot (59)](https://github.com/user-attachments/assets/84683328-741d-4753-8afd-5149687b9981)








# we can use this explanation to takecare of our project2 and this also go for project3 also.
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

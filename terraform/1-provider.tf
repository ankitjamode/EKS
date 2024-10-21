provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket         = "terrafrom-backend-ankit"  
    key            = "terraform/state"                           
    dynamodb_table = "terraform-lock"                                       
  }


  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49"
    }
  }
}



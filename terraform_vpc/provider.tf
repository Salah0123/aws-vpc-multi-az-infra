terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }


  backend "s3" {
    bucket = "vpc-design-resources"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }


}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}



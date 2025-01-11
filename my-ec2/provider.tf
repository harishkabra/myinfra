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
  region  = "us-east-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "hk-terraform-state-bucket01"
    key    = "myinfra/my-ec2/terraform.tfstate"
    region = "us-east-1"
  }
}





# This file provides all the general information for getting started with terraform 

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
# store credentials locally by configuring the AWS CLI
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
}

variable "resume-bucket" { 
    default = "matthew-spahr-resume-bucket"
}

variable "project" { 
    default = "terraform-practice-account"
}
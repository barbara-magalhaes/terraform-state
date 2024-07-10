terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "daemon-remote-state"
    key    = "aws-vm/terraform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  region = "us-east-1"
 
default_tags {
    tags = {
        owner = "babs"
        manage-by = "terraform"
    }
 }
}
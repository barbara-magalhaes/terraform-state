terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.90.1"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    
  tags = locals.common_tags
}
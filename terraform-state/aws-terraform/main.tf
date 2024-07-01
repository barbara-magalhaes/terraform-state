terraform {
  required_version = ">=1.8.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner      = "babs"
      maneged-by = "terraform"
    }

  }
}
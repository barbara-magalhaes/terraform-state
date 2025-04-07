variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR block for VPC"
}

variable "subnet_cidr" {
  default     = "10.0.1.0/24"
  description = "CIDR block for subnet"
}

variable "instance_type" {
  description = " Type about EC2"
}

variable "ami" {
  description = " Template for Ec2"
}
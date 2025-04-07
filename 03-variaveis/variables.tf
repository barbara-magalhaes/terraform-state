variable "environment" {
  type        = string
  description = "environment "
}

variable "aws_region" {
  type        = string
  description = "place will be create EC2"
}
variable "instance_ami" {
  type        = string
  description = "image template for ec2"
}

variable "instance_type" {
  type        = string
  description = "ec2 instance"
}

variable "instance_tags" {
  type        = map(string)
  description = "tags about project"
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}

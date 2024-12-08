terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.10.0"
}

variable "name" {
    description = "The name of the VPC"
    type        = string
}

variable "vpc_id" {
    description = "The ID of the VPC"
    type        = string  
}

resource "aws_internet_gateway" "main" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.name
  }
}
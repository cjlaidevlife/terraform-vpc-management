terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.10.0"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "name" {
  description = "The name tag for the VPC"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to the VPC"
  type        = map(string)
  default     = {}
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}

output "vpc_id" {
  value = aws_vpc.main.id
}

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
  description = "The name of the subnet"
  type        = string
}

variable "vpc_id" {
    description = "The ID of the VPC where the subnet will be created"
    type        = string
}

variable "cidr_block" {
    description = "The CIDR block for the subnet"
    type        = string
}

variable "route_table_id" {
    description = "The ID of the route table to associate with the subnet"
    type        = string
}

resource "aws_subnet" "private" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = var.name
  }
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = var.route_table_id
}
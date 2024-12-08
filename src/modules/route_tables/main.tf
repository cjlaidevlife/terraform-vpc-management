terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.10.0"
}

variable "vpc_id" {
    description = "The ID of the VPC where the subnet will be created"
    type        = string
}

resource "aws_route_table" "main" {
    vpc_id = var.vpc_id

    tags = {
        Name = "main-route-table"
    }
}

output "route_table_id" {
    value = aws_route_table.main.id
}

# resource "aws_route" "internet_access" {
#     route_table_id         = aws_route_table.main.id
#     destination_cidr_block = "0.0.0.0/0"
#     gateway_id             = aws_internet_gateway.main.id
# }
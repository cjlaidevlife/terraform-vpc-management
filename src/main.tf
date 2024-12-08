/**
 * # Main title
 * This is the main file that will be used to create the infrastructure
 * The main file will call the modules to create the VPC, Subnet, and Route Table
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.10.0"
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "{type your profile name}"
}

# ============ VPC ============
# This is the first way to create a VPC
# =================================

module "vpc_001_private" {
  source     = "./modules/vpc"
  name       = "vpc_001_private"
  cidr_block = "10.10.0.0/16"
  tags = {
    "Environment" = "Production"
  }
}

module "vpc_002_public" {
  source     = "./modules/vpc"
  name       = "vpc_002_public"
  cidr_block = "10.11.0.0/16"
  tags = {
    "Environment" = "Staging"
  }
}

module "vpc_003_dmz" {
  source     = "./modules/vpc"
  name       = "vpc_003_dmz"
  cidr_block = "10.12.0.0/16"
  tags = {
    "Environment" = "Development"
  }
}
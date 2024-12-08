# ============ Subnet ============
# This is the first way to create a subnet
# =================================

module "subnet_001_private" {
  source         = "./modules/subnet"
  name           = "subnet_001_private"
  cidr_block     = "10.10.1.0/24"
  vpc_id         = module.vpc_001_private.vpc_id
  route_table_id = module.routetable_001_private.route_table_id
}

module "subnet_002_public" {
  source         = "./modules/subnet"
  name           = "subnet_002_public"
  cidr_block     = "10.10.2.0/24"
  vpc_id         = module.vpc_001_private.vpc_id
  route_table_id = module.routetable_001_private.route_table_id
}


# ============ Route Table ============
# This is the first way to create a route table
# =================================

module "routetable_001_private" {
    source = "./modules/route_tables"
    vpc_id = module.vpc_001_private.vpc_id
}
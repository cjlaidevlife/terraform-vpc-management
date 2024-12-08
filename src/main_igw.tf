module "igw_001_main" {
    source = "./modules/igw"
    name = "igw_001_main"
    vpc_id = module.vpc_001_private.vpc_id
}
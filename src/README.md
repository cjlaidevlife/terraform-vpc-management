<!-- BEGIN_TF_DOCS -->
# Main title
This is the main file that will be used to create the infrastructure
The main file will call the modules to create the VPC, Subnet, and Route Table

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_igw_001_main"></a> [igw\_001\_main](#module\_igw\_001\_main) | ./modules/igw | n/a |
| <a name="module_routetable_001_private"></a> [routetable\_001\_private](#module\_routetable\_001\_private) | ./modules/route_tables | n/a |
| <a name="module_subnet_001_private"></a> [subnet\_001\_private](#module\_subnet\_001\_private) | ./modules/subnet | 1.0.0 |
| <a name="module_subnet_002_public"></a> [subnet\_002\_public](#module\_subnet\_002\_public) | ./modules/subnet | 1.0.0 |
| <a name="module_vpc_001_private"></a> [vpc\_001\_private](#module\_vpc\_001\_private) | ./modules/vpc | n/a |
| <a name="module_vpc_002_public"></a> [vpc\_002\_public](#module\_vpc\_002\_public) | ./modules/vpc | n/a |
| <a name="module_vpc_003_dmz"></a> [vpc\_003\_dmz](#module\_vpc\_003\_dmz) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"
  # insert the 23 required variables here

  name = var.myvpc
  cidr = var.vpc_cidr

  azs             = var.availibility_zones
  private_subnets = var.vpc_private_subnet
  public_subnets  = var.vpc_public_subnet

  #databse subnets

  database_subnets = var.databse_subnets
  create_database_subnet_group = var.db_subnets_group  
  create_database_subnet_route_table  = var.db_subnets_group

  #nate gateways
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}


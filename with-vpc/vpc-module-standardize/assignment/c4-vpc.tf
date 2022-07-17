module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"
  # insert the 23 required variables here

  name = var.myvpc
  cidr = var.vpc_cidr
  azs = var.subnets_az

  #private subnet prerequesite
  private_subnets = var.cidr_for_private_subnets
  
  #public subnets prerequesites
  public_subnets = var.public_subnet_cidr   
  
  #db subnets requesites
  database_subnets = var.cidr_for_db
  create_database_subnet_group = var.create_database_subnet_group
  create_database_subnet_route_table = var.create_database_subnet_route_table


  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  enable_dns_hostnames = true
  enable_dns_support   = true

  
 # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }  
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }

}

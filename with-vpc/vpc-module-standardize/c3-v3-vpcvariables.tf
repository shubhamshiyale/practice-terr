#variables for the vpc
variable "myvpc"{
    description = "my custom vpc"
    type = string
    default = "myvpc"
}

variable "vpc_cidr" {
    description = "cidr for my vpc"
    type = string
    default = "10.0.0.0/16"
}

variable "availibility_zones" {
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
  description = "az for the vpc"
}

variable "vpc_public_subnet"{
    description = "cidr for the public subnets"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_private_subnet" {
  type        = list(string)
  default     = ["10.0.100.0/24", "10.0.101.0/24"]
  description = "these are the cidr's for the private subnets"
}
variable "databse_subnets"{
    type = list(string)
    default = ["10.0.200.0/24", "10.0.201.0/24"]
    description = "these are my db subnets"
}


 variable "db_subnets_group" {
   type        = bool
   default     = true
   description = "database subnets group"
 }

 variable "db_subnet_rt" {
   type        = bool
   default     = true
   description = "database subnets route table"
 }

 variable "vpc_enable_nat_gateway" {
   type        = bool
   default     = true
   description = "enable nat gateway"
 }
 variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}
 
 
 



variable "myvpc" {
  type        = string
  default     = "myvpc"
  description = "my vpc in ap-south-1"

}
variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "cidr for my vpc"
}
variable "subnets_az" {
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
  description = "az for the subnets"
}
variable "public_subnet_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "cidr for the public subnets"
}
variable "cidr_for_private_subnets" {
  type        = list(string)
  default     = ["10.0.100.0/24", "10.0.101.0/24"]
  description = "cidr for private subnets"
}
variable "cidr_for_db" {
  type        = list(string)
  default     = ["10.0.200.0/24", "10.0.201.0/24"]
  description = "cidr for the db subnets"
}
variable "enable_nat_gateway" {
  type        = bool
  default     = true
  description = "enable_nat_gateway"
}
variable "single_nat_gateway" {
  type        = bool
  default     = true
  description = "single_nat_gateway"
}
variable "create_database_subnet_group" {
  type        = bool
  default     = true
  description = " create_database_subnet_group "
}
variable "create_database_subnet_route_table" {
  type        = bool
  default     = true
  description = "create_database_subnet_route_table"
}






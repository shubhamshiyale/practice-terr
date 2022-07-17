terraform {
  required_version = "~> 1.2.2"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.20.1"
    }
  }
}

provider "aws" {
    region = var.aws_region
  # Configuration options
}
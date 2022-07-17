terraform {
  required_version = "~> 1.2.3"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.21.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  # Configuration options
}


resource "aws_s3_bucket" "b" {
  bucket = "shubh1212332"
  
}
resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.b.id
  acl = "private"
}
resource "aws_s3_bucket_versioning" "versioning_enable" {
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_object_copy" "test" {
  bucket = "shubh1212332"
  key    = "gameoflife.war"
  source = "/mnt/gameoflife.war"

}

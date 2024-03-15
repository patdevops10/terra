terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Utilizar una VPC existente
resource "aws_vpc" "example" {
  id = var.vpc_id
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = var.tf_state_bucket_name
}




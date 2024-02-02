terraform {
  # Terraform block to define the provider requirements
  required_providers {
    # Defines version constraint for Terraform AWS provider
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0" 
    }
  }
}

provider "aws" {
  # AWS provider block to configure the region
  region = var.aws_region
}

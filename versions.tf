# Terraform Block
terraform {
  required_version = "> 0.14" # which means any version equal & above 0.14 like 0.15, 0.16 etc 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
# Update remote backend information
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "terraform-sentinel-surya"  # Organization should already exists in Terraform Cloud

    workspaces {
      name = "state-migration-demo" 
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "ct360-everest-tfstate"
    key            = "ct360-everest-tfstate/master_state.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "ct360-team-everest-tfstate"
    # role_arn       = "arn:aws:iam::164400546917:role/OrganizationAccountAccessRole" # Only use this if you want to have one user account in root that has permissions in subaccounts
    }    
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  assume_role {
  role_arn = "arn:aws:iam::164400546917:role/OrganizationAccountAccessRole"
  }
}

locals {
  terraform-git-repo    = "Edit-Platform-Everest"
  ct-aws-account-number = "164400546917"  
}

data "aws_caller_identity" "current" {}



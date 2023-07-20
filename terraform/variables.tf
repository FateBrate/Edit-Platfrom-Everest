# -----------------------------------------------------------------------------
# data lookups
# -----------------------------------------------------------------------------
data "aws_availability_zones" "available" {
}

# -----------------------------------------------------------------------------
# items not likely to change much
# -----------------------------------------------------------------------------

variable "vpc_cidr" {
  default = "10.30.10.0/24"
}

/* variables to inject via terraform.tfvars */
variable "aws_region" {
  default = "eu-central-1"
}

# variable "aws_account_id" {
# }

# variable "aws_profile" {
# }

variable "db_user" {
}

variable "db_password" {
}

variable "db_port" {
}

variable "db_name" {
  default = "edit"
}

variable "project_name" {
  default = "edit-everest"
}

variable "rds_properties" {
  type = map(string)

  default = {
    "instance_class" = "db.t3.micro"
    "storage_type"   = "gp2"
    "engine"         = "postgres"
    "engine_version" = "14.6"
    "license_model"  = "postgresql-license"
  }
}

# -----------------------------------------------------------------------------
# items that may change
# -----------------------------------------------------------------------------
variable "tags" {
  type = map(string)

  default = {
    Team    = "EVEREST"
    Owner   = "BJURIJ"
    Project = "edit-everest"
    Client  = "internal"
    email               = "CT360-AWS-Admins@comtrade.com"    
    git-repo            = "https://github.com/comtrade360/Edit-Platform-Everest"
    environment         = "developement"
  }
}

variable "access_cidr" {
  type    = list(string)
  default = ["54.93.108.34/32"]
}

variable "eks_cluster_name" {
  type        = string
  description = "Location of datacentre where resources will be created and hosted."
  default     = "eks-edit"
}
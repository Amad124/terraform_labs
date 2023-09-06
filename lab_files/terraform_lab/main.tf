terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "var.target_region"
}

resource "aws_instance" "arch-dev-devel-instance" {
  ami           = data.aws_ami.dev_arch_infra_ami.id
  instance_type = "t2.micro"

  tags = {
    Name          = "Arch_dev",
    Cost_Center   = var.cost_center,
    project       = var.project,
    Admin_Contact = var.admin_group
  }
}



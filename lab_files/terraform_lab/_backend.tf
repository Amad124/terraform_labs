terraform {
  backend "s3" {
    key            = "development/arch_dev_team/terraform.tfstate"
    region         = "us-east-1"
    bucket         = "arch-dev-test-infra-terraform-state"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

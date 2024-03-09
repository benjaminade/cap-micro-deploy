terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["/c/Users/USER/.aws/config"]
  shared_credentials_files = ["/c/Users/USER/.aws/credentials"]
  region = var.region
  profile = "default"
}
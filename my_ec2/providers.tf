terraform {
    backend "s3" {
    bucket = "microservices-deploy-remote-backend"
    key = "benglobal/s3/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "microservices_dynamodb_table"
    encrypt = true

  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

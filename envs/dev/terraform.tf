terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.50.0"
    }
  }

  backend "s3" {
    bucket         = "shiva-11911-a"
    key            = "envs/gha-dev/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "ash-tfstate-lock"
  }
}

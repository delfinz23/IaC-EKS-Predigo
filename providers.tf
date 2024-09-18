terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-bucket-tf"  # Use your actual bucket name
    key    = "solar-system-cluster-state.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}
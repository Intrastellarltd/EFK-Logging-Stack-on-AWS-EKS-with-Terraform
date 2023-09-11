terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.65"
    }
  }
  backend "s3" {
    bucket = "eks-cluster-tf-mnm"
    key    = "dev/ebs-addon/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "dev-ebs-addon"
  }
}

provider "aws" {
  region = var.aws_region
}

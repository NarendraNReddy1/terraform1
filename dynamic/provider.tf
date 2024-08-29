terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
    backend "s3" {
    bucket = "daws78s-remote-state-2"
    key    = "expense-dynamic-loop1"
    region = "us-east-1"
    dynamodb_table="daws78s-locking"
  }
}

provider "aws" {
    region="us-east-1"
  # Configuration options
}
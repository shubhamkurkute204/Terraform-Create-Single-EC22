
# Create AWS s3 bucket and AWS dynamodb table for remote backend

terraform{
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_s3_bucket" "shubham_s3_example_for_ec2" {
  bucket = "shubham-s3-terraform-4421"
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "my-tf-test-bucket"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
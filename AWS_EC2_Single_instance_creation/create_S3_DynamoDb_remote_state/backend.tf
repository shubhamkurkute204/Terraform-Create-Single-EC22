terraform {
  backend "s3" {
    bucket         = "shubham-s3-terraform-4421"
    key            = "shubham/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "my-tf-test-bucket"
  }
}
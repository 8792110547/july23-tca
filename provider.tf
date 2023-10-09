provider "aws" {

  region = var.region
}

terraform {
  backend "s3" {
    bucket = "jhc-tca-state1"
    key = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "tca"
    
  }
}
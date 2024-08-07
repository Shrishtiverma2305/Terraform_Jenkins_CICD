resource "aws_s3_bucket" "bucket1" {
	bucket = "shrishti-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    
}

provider "aws" {
    region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "shrishti-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "shrishti-date-dblocks"
    encrypt        = true
  }
}

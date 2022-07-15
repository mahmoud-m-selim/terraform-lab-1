terraform {
  backend "s3" {
    bucket = "mahmoudselimbucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "ms_dynamo"
  }
}
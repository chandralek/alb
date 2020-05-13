terraform {
  backend "s3" {
    bucket = "tfstaterobo"
    key    = "nonprod/alb/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-locking"
  }
}

//Import states

data "terraform_remote_state" "VPC" {
  backend = "s3"
  config = {
    bucket = "tfstaterobo"
    key    = "nonprod/vpc/terraform.tfstate"
    region = "us-west-2"
  }
}

data "terraform_remote_state" "EC2" {
  backend = "s3"
  config = {
    bucket = "tfstaterobo"
    key    = "nonprod/ec2/terraform.tfstate"
    region = "us-west-2"
  }
}
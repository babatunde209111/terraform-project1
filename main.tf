# Creating aws service provider went to terraform registry to also adding the region, added the aws iam username that was created in my aws
# Configure the aws provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-projects"
}

# terraform state file from registry" / stores the terraform state file in s3
# also went to my s3.bucket in my aws to copy, my s3bucket name that was created for my projects
terraform {
  backend "s3" {
    bucket = "ibrahim11-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "default"
  }
}

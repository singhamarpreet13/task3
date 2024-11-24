provider "aws" {
  region = var.region
  access_key = ""
  secret_key = ""
  # AWS authentication can be managed through environment variables or IAM roles
}

terraform {
  backend "local" {
    path = "./se_buckets.tfstate"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # up to 5.99
    }
  }

  backend "s3" {
    encrypt = true
    bucket  = "tkc-web-sockets-tf-state-files"
    region  = "eu-west-1"
    key     = "websockets/terraform.tfstate"
  }
}

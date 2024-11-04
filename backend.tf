
terraform {

  required_version = ">= 0.14.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.1.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-incnow"
    key            = "us-east-1/test/maklai-test/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform_locks"
    profile        = "incnow"
  }
}

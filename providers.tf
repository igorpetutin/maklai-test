provider "aws" {
  region  = var.region
  profile = "incnow"
}

data "aws_caller_identity" "current" {} # used for accesing Account ID and ARN


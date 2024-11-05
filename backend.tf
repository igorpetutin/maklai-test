terraform {
  required_providers {
    wasabi = {
      source  = "k-t-corp/wasabi"
      version = "4.1.1"
    }
  }
}

provider "wasabi" {
  region     = "us-east-1"
  access_key = "..."
  secret_key = "..."

  endpoints {
    sts = "https://sts.wasabisys.com"
    iam = "https://iam.wasabisys.com"
    s3  = "https://s3.wasabisys.com"
  }

  s3_force_path_style = true
}

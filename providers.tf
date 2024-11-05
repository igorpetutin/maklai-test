provider "wasabi" {
  region  = "us-east-1"
  profile = "wasabi_prod"

  endpoints {
    sts = "https://sts.wasabisys.com"
    iam = "https://iam.wasabisys.com"
    s3  = "https://s3.wasabisys.com"
  }

  s3_force_path_style = true
}
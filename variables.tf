variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Provider region"
}

variable "bucket_name_prefix" {
  description = "Prefix for all S3 bucket names"
  type        = string
  default     = "maklaitest-"
}
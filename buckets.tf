resource "aws_s3_bucket" "buckets" {
  for_each = toset(local.bucket_names)
  bucket   = "${var.bucket_name_prefix}${each.key}-bucket"
  tags     = { "owner" = "DevOps", purpose = "maklai-test-task" }
}
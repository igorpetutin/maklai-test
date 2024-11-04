resource "aws_iam_policy" "bucket_read_only" {
  for_each = toset(local.bucket_names)
  name     = "${each.key}-ReadOnly"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = ["s3:GetObject"],
      Effect   = "Allow",
      Resource = "${aws_s3_bucket.buckets[each.key].arn}/*"
    }]
  })
}
resource "aws_iam_policy" "bucket_read_write" {
  for_each = toset(local.bucket_names)
  name     = "${each.key}-ReadWrite"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"],
      Effect   = "Allow",
      Resource = "${aws_s3_bucket.buckets[each.key].arn}/*"
    }]
  })
}

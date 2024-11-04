
locals {
  bucket_names = ["sales-data", "marketing-data", "engineering-data", "finance-data", "operations-data"]

  user_permissions = {
    alice = {
      sales-data       = "rw"
      marketing-data   = "rw"
      engineering-data = "ro"
    },
    bob = {
      sales-data       = "rw"
      marketing-data   = "rw"
      engineering-data = "rw"
      finance-data     = "rw"
      operations-data  = "rw"
    },
    charlie = {
      operations-data = "rw"
      finance-data    = "ro"
    },
    backup = {
      sales-data       = "ro"
      marketing-data   = "ro"
      engineering-data = "ro"
      finance-data     = "ro"
      operations-data  = "ro"
    }
  }
  user_policy_attachments = flatten([
    for user, permissions in local.user_permissions : [
      for bucket, permission in permissions : {
        user   = user
        bucket = bucket
        policy_arn = lookup({
          "ro" = aws_iam_policy.bucket_read_only[bucket].arn,
          "rw" = aws_iam_policy.bucket_read_write[bucket].arn
        }, permission, null)
      }
    ]
  ])
}


resource "aws_iam_user" "users" {
  for_each = local.user_permissions
  name     = each.key
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  for_each = {
    for attachment in local.user_policy_attachments :
    "${attachment.user}-${attachment.bucket}" => attachment
  }

  user       = aws_iam_user.users[each.value.user].name
  policy_arn = each.value.policy_arn
  depends_on = [aws_iam_user.users]
}

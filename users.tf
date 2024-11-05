
resource "wasabi_user" "users" {
  for_each = local.user_permissions
  name     = each.key
}

resource "wasabi_policy_attachment" "user_policy_attachment" {
  for_each = {
    for attachment in local.user_policy_attachments :
    "${attachment.user}-${attachment.bucket}" => attachment
  }

  user       = wasabi_user.users[each.value.user].name
  policy_arn = each.value.policy_arn
  depends_on = [wasabi_user.users]
}

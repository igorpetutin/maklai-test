# maklai-test
Test task

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_wasabi"></a> [wasabi](#requirement\_wasabi) | 4.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_wasabi"></a> [wasabi](#provider\_wasabi) | 4.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [wasabi_bucket.buckets](https://registry.terraform.io/providers/k-t-corp/wasabi/4.1.1/docs/resources/bucket) | resource |
| [wasabi_policy.bucket_read_only](https://registry.terraform.io/providers/k-t-corp/wasabi/4.1.1/docs/resources/policy) | resource |
| [wasabi_policy.bucket_read_write](https://registry.terraform.io/providers/k-t-corp/wasabi/4.1.1/docs/resources/policy) | resource |
| [wasabi_policy_attachment.user_policy_attachment](https://registry.terraform.io/providers/k-t-corp/wasabi/4.1.1/docs/resources/policy_attachment) | resource |
| [wasabi_user.users](https://registry.terraform.io/providers/k-t-corp/wasabi/4.1.1/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name_prefix"></a> [bucket\_name\_prefix](#input\_bucket\_name\_prefix) | Prefix for all S3 bucket names | `string` | `"maklaitest-"` | no |
| <a name="input_region"></a> [region](#input\_region) | Provider region | `string` | `"us-east-1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
# terraform-aws-iam-policy

Terraform module to create an IAM policy.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | Description for the IAM policy | `string` | `"Created by terraform"` | no |
| identifier | Name for the resources | `string` | n/a | yes |
| path | Path level of the IAM policy | `string` | `"/"` | no |
| rendered\_policy | Rendered JSON with the policy to be used | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| output | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing
If you want to contribute to this repository check all the guidelines specified [here](.github/CONTRIBUTING.md) before submitting a new PR.

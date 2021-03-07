# AWS Identity and Access Management Policy (IAM Policy) Terraform Module

Terraform module to provision [`IAM Policy`](https://aws.amazon.com/iam/) on AWS.

## Usage

### Setup

Create a IAM Policy.
```hcl
    module "iam_policy" {
        source          = "git@github.com:nclouds/terraform-aws-iam-policy.git?ref=v0.1.1"
        identifier      = "example-iam-policy"
        description     = "IAM Policy for Cloudwatch Logs Administrator"
        rendered_policy = {
            actions = [
                "logs:*"
            ],
            resources = [
                "*",
            ]
        }
    }
```

## Examples
Here are some working examples of using this module:
- [`examples/`](examples/)

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

<p align="left"><img width=400 height="100" src="https://www.nclouds.com/img/nclouds-logo.svg"></p>  

![Terraform](https://github.com/nclouds/terraform-aws-iam-policy/workflows/Terraform/badge.svg)
# nCode Library

## AWS Identity and Access Management Policy (IAM Policy) Terraform Module

Terraform module to provision [`IAM Policy`](https://aws.amazon.com/iam/) on AWS.

## Usage

### Setup

Create a IAM Policy.
```hcl
    module "iam_policy" {
        source          = "app.terraform.io/ncodelibrary/iam-policy/aws"
        version         = "0.1.3"
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

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| append\_workspace | Appends the terraform workspace at the end of resource names, <identifier>-<worspace> | `bool` | `true` | no |
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

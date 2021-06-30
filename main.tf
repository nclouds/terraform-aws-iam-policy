locals {
  identifier = var.append_workspace ? "${var.identifier}-${terraform.workspace}" : var.identifier
}
resource "aws_iam_policy" "policy" {
  description = var.description
  policy      = var.rendered_policy
  name        = local.identifier
  path        = var.path
}

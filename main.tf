resource "aws_iam_policy" "policy" {
  description = var.description
  policy      = var.rendered_policy
  name        = "${var.identifier}-${terraform.workspace}"
  path        = var.path
}

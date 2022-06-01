variable "tags" {
  description = "tags to be applied to resources"
  default = {
    Owner       = "sysops"
    Environment = "dev"
    Cost_Center = "XYZ"
    Name        = "example-iam-policy"
  }
}
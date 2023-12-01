#Define Local Variables in Terraform
locals {
  owner                = var.Bussiness_Division
  environment          = var.Environment
  resource_name_prefix = "${local.owner}-${local.environment}"
  common_tags = {
    Owner       = local.owner,
    Environment = local.environment
  }
}

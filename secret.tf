locals {
foldername_nw = replace(var.foldername, "_", "-")
}


module "keyvault-secret-rbac" {
  source = "git::https://github.com/deepadeepanjali/secret-test.git?ref=main"
  for_each = var.bot_configurations
  keyvault       = var.keyvault
  resourcegroup  = var.resourcegroup
  secretname = "secret-${local.foldername_nw}-${each.value.botname}"
  secretvalue = each.value.secretvalue
  role_definition_name = each.value.secret_role_definition
  principal_id = each.value.ad_group_objectid
}

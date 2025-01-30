module "keyvault-secret-rbac" {
  for_each            = var.bot_configurations
  source = "git::https://github.com/deepadeepanjali/secret-test.git?ref=main"  
  
  keyvault       = var.keyvault
  resourcegroup  = var.resourcegroup
  secret_name    = each.value.secretname
  secret_value        = each.value.secretvalue
  secret_details      = each.value.secret_details
}

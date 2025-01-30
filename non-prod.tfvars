keyvault = "kv-my-43210"
resourcegroup = "rg-my"   
foldername = "customer_123"


bot_configurations = {
  "bot1" = {
    enabled          = true
    botname           = "botA"
    ad_group_objectid = "b5ca23dd-3b43-40b9-a0d6-4c773582daef" #"b5ca23dd-3b43-40b9-a0d6-4c773582daef"
    secretvalue = "456"
    secret_role_definition = "Key Vault Secrets Officer"
    kv_role_definition = "Key Vault Reader"
  }  
  }

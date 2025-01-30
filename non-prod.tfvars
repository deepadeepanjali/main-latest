keyvault = "kv-my-43210"
resourcegroup = "rg-my"   
#foldername = "customer_123"

bot_configurations =  [
  {
    botname          = "bot1"
    secretname       = "secret-name-1"
    secretvalue      = "secret-value-1"
    secret_details   = [
      {
        secret_objectid = "b5ca23dd-3b43-40b9-a0d6-4c773582daef"
        role            = "Key Vault Secrets Officer"
      },
      {
        secret_objectid = "d06b4b38-4d0c-4ff2-aa86-6e5ec0a4d6ca"
        role            = "Key Vault Secrets User"
      }
    ]
  }
]

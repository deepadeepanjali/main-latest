variable "keyvault" {
  description = "Name of keyvault"
  type        = string
}

variable "resourcegroup" {
  description = "The resource group of the Key Vault"
  type        = string
}


variable "bots" {
  description = "A list of bots with their details (KeyVault, secrets, and roles)"
  type = list(object({
    botname          = string
    secretname       = string
    secretvalue      = string
    secret_details   = list(object({
      secret_objectid = string
      role            = string
    }))
  }))
}

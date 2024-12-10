resource "azurerm_key_vault" "example" {
  name                        = "example-keyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  purge_protection_enabled    = true
}

resource "azurerm_key_vault_secret" "example" {
  name         = "example-secret"
  value        = "SuperSecretValue"
  key_vault_id = azurerm_key_vault.example.id
}
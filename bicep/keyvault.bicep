resource keyVault 'Microsoft.KeyVault/vaults@2021-10-01' = {
  name: 'example-keyvault'
  location: resourceGroup().location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: subscription().tenantId
    enableSoftDelete: true
    enablePurgeProtection: true
  }
}

resource secret 'Microsoft.KeyVault/vaults/secrets@2021-10-01' = {
  name: 'example-secret'
  parent: keyVault
  properties: {
    value: 'SuperSecretValue'
  }
}

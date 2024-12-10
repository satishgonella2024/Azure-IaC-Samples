resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'examplestorageacct'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

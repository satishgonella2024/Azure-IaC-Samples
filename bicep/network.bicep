resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'example-vnet'
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'subnet1'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
      {
        name: 'subnet2'
        properties: {
          addressPrefix: '10.0.2.0/24'
        }
      }
    ]
  }
}


param nameTT string = 'biceptorageccount'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: nameTT
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

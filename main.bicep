param location string = resourceGroup().location
param storageAccountName string = 'bicep${uniqueString(resourceGroup().id)}'

resource storageAccountTzaff 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

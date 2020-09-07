# DatadogAPIClient::V2::LogsArchiveDestination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container** | **String** | The container where the archive will be stored. | 
**integration** | [**LogsArchiveIntegrationS3**](LogsArchiveIntegrationS3.md) |  | 
**path** | **String** | The archive path. | [optional] 
**region** | **String** | The region where the archive will be stored. | [optional] 
**storage_account** | **String** | The associated storage account. | 
**type** | [**LogsArchiveDestinationS3Type**](LogsArchiveDestinationS3Type.md) |  | 
**bucket** | **String** | The bucket where the archive will be stored. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsArchiveDestination.new(container: container-name,
                                 integration: null,
                                 path: null,
                                 region: null,
                                 storage_account: account-name,
                                 type: null,
                                 bucket: bucket-name)
```



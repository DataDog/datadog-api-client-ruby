# DatadogAPIClient::V2::LogsArchiveDestinationGCS

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket** | **String** | The bucket where the archive will be stored. | 
**integration** | [**LogsArchiveIntegrationGCS**](LogsArchiveIntegrationGCS.md) |  | 
**path** | **String** | The archive path. | [optional] 
**type** | [**LogsArchiveDestinationGCSType**](LogsArchiveDestinationGCSType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsArchiveDestinationGCS.new(bucket: bucket-name,
                                 integration: null,
                                 path: null,
                                 type: null)
```



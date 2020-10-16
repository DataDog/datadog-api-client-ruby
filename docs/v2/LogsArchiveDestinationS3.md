# DatadogAPIClient::V2::LogsArchiveDestinationS3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket** | **String** | The bucket where the archive will be stored. | 
**integration** | [**LogsArchiveIntegrationS3**](LogsArchiveIntegrationS3.md) |  | 
**path** | **String** | The archive path. | [optional] 
**type** | [**LogsArchiveDestinationS3Type**](LogsArchiveDestinationS3Type.md) |  | [default to &#39;s3&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsArchiveDestinationS3.new(bucket: bucket-name,
                                 integration: null,
                                 path: null,
                                 type: null)
```



# DatadogAPIClient::V2::LogsArchiveCreateRequestAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination** | [**LogsArchiveCreateRequestDestination**](LogsArchiveCreateRequestDestination.md) |  | 
**name** | **String** | The archive name. | 
**query** | **String** | The archive query/filter. Logs matching this query are included in the archive. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsArchiveCreateRequestAttributes.new(destination: null,
                                 name: Nginx Archive,
                                 query: source:nginx)
```



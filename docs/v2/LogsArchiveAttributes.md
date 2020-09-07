# DatadogAPIClient::V2::LogsArchiveAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination** | [**LogsArchiveDestination**](LogsArchiveDestination.md) |  | 
**name** | **String** | The archive name. | 
**query** | **String** | The archive query/filter. Logs matching this query are included in the archive. | 
**state** | [**LogsArchiveState**](LogsArchiveState.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsArchiveAttributes.new(destination: null,
                                 name: Nginx Archive,
                                 query: source:nginx,
                                 state: null)
```



# DatadogAPIClient::V2::LogsArchiveAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination** | [**LogsArchiveDestination**](LogsArchiveDestination.md) |  | 
**name** | **String** | The archive name. | 
**query** | **String** | The archive query/filter. Logs matching this query are included in the archive. | 
**rehydration_tags** | **Array&lt;String&gt;** | An array of tags to add to rehydrated logs from an archive. | [optional] 
**state** | [**LogsArchiveState**](LogsArchiveState.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsArchiveAttributes.new(destination: null,
                                 name: Nginx Archive,
                                 query: source:nginx,
                                 rehydration_tags: [&quot;team:intake&quot;,&quot;team:app&quot;],
                                 state: null)
```



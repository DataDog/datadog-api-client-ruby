# DatadogAPIClient::V2::LogsResponseMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**elapsed** | **Integer** | The time elapsed in milliseconds | [optional] 
**page** | [**LogsResponseMetadataPage**](LogsResponseMetadataPage.md) |  | [optional] 
**request_id** | **String** | The identifier of the request | [optional] 
**status** | [**LogsAggregateResponseStatus**](LogsAggregateResponseStatus.md) |  | [optional] 
**warnings** | [**Array&lt;LogsWarning&gt;**](LogsWarning.md) | A list of warnings (non fatal errors) encountered, partial results might be returned if warnings are present in the response. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsResponseMetadata.new(elapsed: 132,
                                 page: null,
                                 request_id: MWlFUjVaWGZTTTZPYzM0VXp1OXU2d3xLSVpEMjZKQ0VKUTI0dEYtM3RSOFVR,
                                 status: null,
                                 warnings: null)
```



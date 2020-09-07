# DatadogAPIClient::V2::LogsListResponseLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_next** | **String** | Link for the next set of results. Note that the request can also be made using the POST endpoint. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsListResponseLinks.new(_next: https://app.datadoghq.com/api/v2/logs/event?filter[query]&#x3D;foo&amp;page[cursor]&#x3D;eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ&#x3D;&#x3D;)
```



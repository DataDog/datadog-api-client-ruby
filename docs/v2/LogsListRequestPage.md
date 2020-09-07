# DatadogAPIClient::V2::LogsListRequestPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **String** | List following results with a cursor provided in the previous query. | [optional] 
**limit** | **Integer** | Maximum number of logs in the response. | [optional] [default to 10]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsListRequestPage.new(cursor: eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ&#x3D;&#x3D;,
                                 limit: 25)
```



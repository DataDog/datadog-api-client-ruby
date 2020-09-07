# DatadogAPIClient::V1::UsageTraceResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usage** | [**Array&lt;UsageTraceHour&gt;**](UsageTraceHour.md) | Array with the number of hourly traces indexed for a given organization. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageTraceResponse.new(usage: null)
```



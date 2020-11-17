# DatadogAPIClient::V1::UsageTracingWithoutLimitsHour

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hour** | **Time** | The hour for the usage. | [optional] 
**ingested_events_bytes** | **Integer** | Contains the total number of bytes ingested during a given hour. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageTracingWithoutLimitsHour.new(hour: null,
                                 ingested_events_bytes: null)
```



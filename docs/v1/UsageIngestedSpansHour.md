# DatadogAPIClient::V1::UsageIngestedSpansHour

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hour** | **Time** | The hour for the usage. | [optional] 
**ingested_events_bytes** | **Integer** | Contains the total number of bytes ingested during a given hour. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageIngestedSpansHour.new(hour: null,
                                 ingested_events_bytes: null)
```



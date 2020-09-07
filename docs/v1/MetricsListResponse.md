# DatadogAPIClient::V1::MetricsListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Time when the metrics were active, seconds since the Unix epoch. | [optional] 
**metrics** | **Array&lt;String&gt;** | List of metric names. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::MetricsListResponse.new(from: null,
                                 metrics: null)
```



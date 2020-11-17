# DatadogAPIClient::V1::UsageTimeseriesHour

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hour** | **Time** | The hour for the usage. | [optional] 
**num_custom_input_timeseries** | **Integer** | Contains the number of custom metrics that are inputs for aggregations (metric configured is custom). | [optional] 
**num_custom_output_timeseries** | **Integer** | Contains the number of custom metrics that are outputs for aggregations (metric configured is custom). | [optional] 
**num_custom_timeseries** | **Integer** | Contains the number of non-aggregation custom metrics. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageTimeseriesHour.new(hour: null,
                                 num_custom_input_timeseries: null,
                                 num_custom_output_timeseries: null,
                                 num_custom_timeseries: null)
```



# DatadogAPIClient::V1::MonitorOptionsAggregation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_by** | **String** | Group to break down the monitor on. | [optional] 
**metric** | **String** | Metric name used in the monitor. | [optional] 
**type** | **String** | Metric type used in the monitor. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::MonitorOptionsAggregation.new(group_by: host,
                                 metric: metrics.name,
                                 type: count)
```



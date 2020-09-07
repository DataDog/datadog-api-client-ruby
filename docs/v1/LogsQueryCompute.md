# DatadogAPIClient::V1::LogsQueryCompute

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aggregation** | **String** | The aggregation method. | 
**facet** | **String** | Facet name. | [optional] 
**interval** | **Integer** | Define a time interval in seconds. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsQueryCompute.new(aggregation: avg,
                                 facet: @duration,
                                 interval: 5000)
```



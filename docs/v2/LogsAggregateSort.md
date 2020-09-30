# DatadogAPIClient::V2::LogsAggregateSort

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aggregation** | [**LogsAggregationFunction**](LogsAggregationFunction.md) |  | [optional] 
**metric** | **String** | The metric to sort by (only used for type&#x3D;metric) | [optional] 
**order** | [**LogsSortOrder**](LogsSortOrder.md) |  | [optional] 
**type** | [**LogsAggregateSortType**](LogsAggregateSortType.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsAggregateSort.new(aggregation: null,
                                 metric: @duration,
                                 order: null,
                                 type: null)
```



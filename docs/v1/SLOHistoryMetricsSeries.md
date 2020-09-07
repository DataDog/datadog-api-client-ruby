# DatadogAPIClient::V1::SLOHistoryMetricsSeries

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | Count of submitted metrics. | 
**metadata** | [**SLOHistoryMetricsSeriesMetadata**](SLOHistoryMetricsSeriesMetadata.md) |  | 
**sum** | **Float** | Total sum of the query. | 
**values** | **Array&lt;Float&gt;** | The query values for each metric. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SLOHistoryMetricsSeries.new(count: 0,
                                 metadata: null,
                                 sum: 0.0,
                                 values: [])
```



# DatadogAPIClient::V1::GraphSnapshot

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**graph_def** | **String** | A JSON document defining the graph. &#x60;graph_def&#x60; can be used instead of &#x60;metric_query&#x60;. The JSON document uses the [grammar defined here](https://docs.datadoghq.com/graphing/graphing_json/#grammar) and should be formatted to a single line then URL encoded. | [optional] 
**metric_query** | **String** | The metric query. One of &#x60;metric_query&#x60; or &#x60;graph_def&#x60; is required. | [optional] 
**snapshot_url** | **String** | URL of your [graph snapshot](https://docs.datadoghq.com/metrics/explorer/#snapshot). | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::GraphSnapshot.new(graph_def: null,
                                 metric_query: null,
                                 snapshot_url: https://app.datadoghq.com/s/f12345678/aaa-bbb-ccc)
```



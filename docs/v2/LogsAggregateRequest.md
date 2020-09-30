# DatadogAPIClient::V2::LogsAggregateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compute** | [**Array&lt;LogsCompute&gt;**](LogsCompute.md) | The list of metrics or timeseries to compute for the retrieved buckets. | [optional] 
**filter** | [**LogsQueryFilter**](LogsQueryFilter.md) |  | [optional] 
**group_by** | [**Array&lt;LogsGroupBy&gt;**](LogsGroupBy.md) | The rules for the group by | [optional] 
**options** | [**LogsQueryOptions**](LogsQueryOptions.md) |  | [optional] 
**paging** | [**LogsAggregateRequestPaging**](LogsAggregateRequestPaging.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsAggregateRequest.new(compute: null,
                                 filter: null,
                                 group_by: null,
                                 options: null,
                                 paging: null)
```



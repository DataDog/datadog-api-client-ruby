# DatadogAPIClient::V2::LogsGroupBy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**facet** | **String** | The name of the facet to use (required) | 
**histogram** | [**LogsGroupByHistogram**](LogsGroupByHistogram.md) |  | [optional] 
**limit** | **Integer** | The maximum buckets to return for this group by | [optional] [default to 10]
**missing** | [**LogsGroupByMissing**](LogsGroupByMissing.md) |  | [optional] 
**sort** | [**LogsAggregateSort**](LogsAggregateSort.md) |  | [optional] 
**total** | [**LogsGroupByTotal**](LogsGroupByTotal.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsGroupBy.new(facet: host,
                                 histogram: null,
                                 limit: null,
                                 missing: null,
                                 sort: null,
                                 total: null)
```



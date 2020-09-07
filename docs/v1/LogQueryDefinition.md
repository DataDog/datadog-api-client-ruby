# DatadogAPIClient::V1::LogQueryDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compute** | [**LogsQueryCompute**](LogsQueryCompute.md) |  | [optional] 
**group_by** | [**Array&lt;LogQueryDefinitionGroupBy&gt;**](LogQueryDefinitionGroupBy.md) | List of tag prefixes to group by in the case of a cluster check. | [optional] 
**index** | **String** | A coma separated-list of index names. Use \&quot;*\&quot; query all indexes at once. [Multiple Indexes](https://docs.datadoghq.com/logs/indexes/#multiple-indexes) | [optional] 
**multi_compute** | [**Array&lt;LogsQueryCompute&gt;**](LogsQueryCompute.md) | This field is mutually exclusive with &#x60;compute&#x60;. | [optional] 
**search** | [**LogQueryDefinitionSearch**](LogQueryDefinitionSearch.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogQueryDefinition.new(compute: null,
                                 group_by: null,
                                 index: days-3,days-7,
                                 multi_compute: null,
                                 search: null)
```



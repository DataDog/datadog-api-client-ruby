# DatadogAPIClient::V1::TableWidgetRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aggregator** | [**WidgetAggregator**](WidgetAggregator.md) |  | [optional] 
**_alias** | **String** | The column name (defaults to the metric name). | [optional] 
**apm_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**apm_stats_query** | [**ApmStatsQueryDefinition**](ApmStatsQueryDefinition.md) |  | [optional] 
**conditional_formats** | [**Array&lt;WidgetConditionalFormat&gt;**](WidgetConditionalFormat.md) | List of conditional formats. | [optional] 
**event_query** | [**EventQueryDefinition**](EventQueryDefinition.md) |  | [optional] 
**limit** | **Integer** | For metric queries, the number of lines to show in the table. Only one request should have this property. | [optional] 
**log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**network_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**order** | [**WidgetSort**](WidgetSort.md) |  | [optional] 
**process_query** | [**ProcessQueryDefinition**](ProcessQueryDefinition.md) |  | [optional] 
**q** | **String** | Query definition. | [optional] 
**rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**security_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::TableWidgetRequest.new(aggregator: null,
                                 _alias: null,
                                 apm_query: null,
                                 apm_stats_query: null,
                                 conditional_formats: null,
                                 event_query: null,
                                 limit: null,
                                 log_query: null,
                                 network_query: null,
                                 order: null,
                                 process_query: null,
                                 q: null,
                                 rum_query: null,
                                 security_query: null)
```



# DatadogAPIClient::V1::ToplistWidgetRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apm_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**conditional_formats** | [**Array&lt;WidgetConditionalFormat&gt;**](WidgetConditionalFormat.md) | List of conditional formats. | [optional] 
**event_query** | [**EventQueryDefinition**](EventQueryDefinition.md) |  | [optional] 
**log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**network_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**process_query** | [**ProcessQueryDefinition**](ProcessQueryDefinition.md) |  | [optional] 
**q** | **String** | Widget query. | [optional] 
**rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**security_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**style** | [**WidgetRequestStyle**](WidgetRequestStyle.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::ToplistWidgetRequest.new(apm_query: null,
                                 conditional_formats: [{&quot;comparator&quot;:&quot;&gt;&#x3D;&quot;,&quot;palette&quot;:&quot;blue&quot;,&quot;value&quot;:1.0}],
                                 event_query: null,
                                 log_query: null,
                                 network_query: null,
                                 process_query: null,
                                 q: null,
                                 rum_query: null,
                                 security_query: null,
                                 style: null)
```



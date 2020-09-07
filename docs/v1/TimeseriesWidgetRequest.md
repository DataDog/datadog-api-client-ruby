# DatadogAPIClient::V1::TimeseriesWidgetRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apm_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**display_type** | [**WidgetDisplayType**](WidgetDisplayType.md) |  | [optional] 
**event_query** | [**EventQueryDefinition**](EventQueryDefinition.md) |  | [optional] 
**log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**metadata** | [**Array&lt;TimeseriesWidgetRequestMetadata&gt;**](TimeseriesWidgetRequestMetadata.md) | Used to define expression aliases. | [optional] 
**network_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**process_query** | [**ProcessQueryDefinition**](ProcessQueryDefinition.md) |  | [optional] 
**q** | **String** | Widget query. | [optional] 
**rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**security_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**style** | [**WidgetRequestStyle**](WidgetRequestStyle.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::TimeseriesWidgetRequest.new(apm_query: null,
                                 display_type: null,
                                 event_query: null,
                                 log_query: null,
                                 metadata: null,
                                 network_query: null,
                                 process_query: null,
                                 q: null,
                                 rum_query: null,
                                 security_query: null,
                                 style: null)
```



# DatadogAPIClient::V1::HostMapRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apm_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**event_query** | [**EventQueryDefinition**](EventQueryDefinition.md) |  | [optional] 
**log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**network_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**process_query** | [**ProcessQueryDefinition**](ProcessQueryDefinition.md) |  | [optional] 
**q** | **String** | Query definition. | [optional] 
**rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 
**security_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::HostMapRequest.new(apm_query: null,
                                 event_query: null,
                                 log_query: null,
                                 network_query: null,
                                 process_query: null,
                                 q: null,
                                 rum_query: null,
                                 security_query: null)
```



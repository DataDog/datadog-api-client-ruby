# DatadogAPIClient::V1::ApmResourcesQueryDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**columns** | **Array&lt;String&gt;** | Column names used by front end for display. | [optional] 
**env** | **String** | Environment name. | 
**name** | **String** | Operation name associated with service. | 
**resource** | **String** | Resource name. | [optional] 
**service** | **String** | Service name. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::ApmResourcesQueryDefinition.new(columns: null,
                                 env: prod,
                                 name: rack.request,
                                 resource: CartsController,
                                 service: web-store)
```



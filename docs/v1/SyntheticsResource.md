# DatadogAPIClient::V1::SyntheticsResource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**duration** | **Float** | Number of time the resource was collected. | [optional] 
**method** | **String** | HTTP method associated to the resource. | [optional] 
**size** | **Integer** | Size of the resource in bytes. | [optional] 
**status** | **Integer** | Status Code of the resource. | [optional] 
**timestamp** | **Float** | Timestamp of the resource collection. | [optional] 
**trace_id** | **String** | Trace ID associated with the resource if any. | [optional] 
**type** | [**SyntheticsResourceType**](SyntheticsResourceType.md) |  | [optional] 
**url** | **String** | URL of the resource. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsResource.new(duration: null,
                                 method: null,
                                 size: null,
                                 status: null,
                                 timestamp: null,
                                 trace_id: null,
                                 type: null,
                                 url: null)
```



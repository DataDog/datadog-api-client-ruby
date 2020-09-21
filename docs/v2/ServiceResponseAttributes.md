# DatadogAPIClient::V2::ServiceResponseAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | Timestamp of when the service was created. | [optional] [readonly] 
**modified** | **DateTime** | Timestamp of when the service was modified. | [optional] [readonly] 
**name** | **String** | Name of the service. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::ServiceResponseAttributes.new(created: null,
                                 modified: null,
                                 name: service name)
```



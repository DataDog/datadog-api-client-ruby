# DatadogAPIClient::V2::IncidentServiceResponseAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | Timestamp of when the incident service was created. | [optional] [readonly] 
**modified** | **DateTime** | Timestamp of when the incident service was modified. | [optional] [readonly] 
**name** | **String** | Name of the incident service. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentServiceResponseAttributes.new(created: null,
                                 modified: null,
                                 name: service name)
```



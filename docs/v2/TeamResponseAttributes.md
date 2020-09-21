# DatadogAPIClient::V2::TeamResponseAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | Timestamp of when the team was created. | [optional] [readonly] 
**modified** | **DateTime** | Timestamp of when the team was modified. | [optional] [readonly] 
**name** | **String** | Name of the team. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::TeamResponseAttributes.new(created: null,
                                 modified: null,
                                 name: team name)
```



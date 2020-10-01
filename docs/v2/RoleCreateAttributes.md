# DatadogAPIClient::V2::RoleCreateAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Creation time of the role. | [optional] [readonly] 
**modified_at** | **DateTime** | Time of last role modification. | [optional] [readonly] 
**name** | **String** | Name of the role. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::RoleCreateAttributes.new(created_at: null,
                                 modified_at: null,
                                 name: developers)
```



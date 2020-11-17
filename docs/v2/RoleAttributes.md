# DatadogAPIClient::V2::RoleAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **Time** | Creation time of the role. | [optional] [readonly] 
**modified_at** | **Time** | Time of last role modification. | [optional] [readonly] 
**name** | **String** | Name of the role. | [optional] 
**user_count** | **Integer** | Number of users with that role. | [optional] [readonly] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::RoleAttributes.new(created_at: null,
                                 modified_at: null,
                                 name: null,
                                 user_count: null)
```



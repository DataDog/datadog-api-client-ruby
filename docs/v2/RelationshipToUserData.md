# DatadogAPIClient::V2::RelationshipToUserData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier that represents the user. | 
**type** | [**UsersType**](UsersType.md) |  | [default to &#39;users&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::RelationshipToUserData.new(id: 00000000-0000-0000-0000-000000000000,
                                 type: null)
```



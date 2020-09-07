# DatadogAPIClient::V2::UserResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**included** | [**Array&lt;UserResponseIncludedItem&gt;**](UserResponseIncludedItem.md) | Array of objects related to the user. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::UserResponse.new(data: null,
                                 included: null)
```



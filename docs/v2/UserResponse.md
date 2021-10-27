# DatadogAPIClient::V2::UserResponse

## Properties

| Name         | Type                                                                     | Description                           | Notes      |
| ------------ | ------------------------------------------------------------------------ | ------------------------------------- | ---------- |
| **data**     | [**User**](User.md)                                                      |                                       | [optional] |
| **included** | [**Array&lt;UserResponseIncludedItem&gt;**](UserResponseIncludedItem.md) | Array of objects related to the user. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserResponse.new(
  data: null,
  included: null
)
```

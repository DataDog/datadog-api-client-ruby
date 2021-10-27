# DatadogAPIClient::V2::UsersResponse

## Properties

| Name         | Type                                                                     | Description                            | Notes      |
| ------------ | ------------------------------------------------------------------------ | -------------------------------------- | ---------- |
| **data**     | [**Array&lt;User&gt;**](User.md)                                         | Array of returned users.               | [optional] |
| **included** | [**Array&lt;UserResponseIncludedItem&gt;**](UserResponseIncludedItem.md) | Array of objects related to the users. | [optional] |
| **meta**     | [**ResponseMetaAttributes**](ResponseMetaAttributes.md)                  |                                        | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UsersResponse.new(
  data: null,
  included: null,
  meta: null
)
```

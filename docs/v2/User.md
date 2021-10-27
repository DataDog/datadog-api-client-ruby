# DatadogAPIClient::V2::User

## Properties

| Name              | Type                                                          | Description     | Notes                                  |
| ----------------- | ------------------------------------------------------------- | --------------- | -------------------------------------- |
| **attributes**    | [**UserAttributes**](UserAttributes.md)                       |                 | [optional]                             |
| **id**            | **String**                                                    | ID of the user. | [optional]                             |
| **relationships** | [**UserResponseRelationships**](UserResponseRelationships.md) |                 | [optional]                             |
| **type**          | [**UsersType**](UsersType.md)                                 |                 | [optional][default to &#39;users&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::User.new(
  attributes: null,
  id: null,
  relationships: null,
  type: null
)
```

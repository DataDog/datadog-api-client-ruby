# DatadogAPIClient::V2::NullableRelationshipToUser

## Properties

| Name     | Type                                                    | Description                    | Notes |
| -------- | ------------------------------------------------------- | ------------------------------ | ----- |
| **data** | [**RelationshipToUserData**](RelationshipToUserData.md) | Optional relationship to user. |       |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::NullableRelationshipToUser.new(
  data: {&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;users&quot;}
)
```

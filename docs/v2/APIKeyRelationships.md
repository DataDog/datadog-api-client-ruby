# DatadogAPIClient::V2::APIKeyRelationships

## Properties

| Name            | Type                                            | Description | Notes      |
| --------------- | ----------------------------------------------- | ----------- | ---------- |
| **created_by**  | [**RelationshipToUser**](RelationshipToUser.md) |             | [optional] |
| **modified_by** | [**RelationshipToUser**](RelationshipToUser.md) |             | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::APIKeyRelationships.new(
  created_by: null,
  modified_by: null
)
```

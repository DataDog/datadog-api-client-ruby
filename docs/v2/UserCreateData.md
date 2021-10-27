# DatadogAPIClient::V2::UserCreateData

## Properties

| Name              | Type                                                | Description | Notes                        |
| ----------------- | --------------------------------------------------- | ----------- | ---------------------------- |
| **attributes**    | [**UserCreateAttributes**](UserCreateAttributes.md) |             |                              |
| **relationships** | [**UserRelationships**](UserRelationships.md)       |             | [optional]                   |
| **type**          | [**UsersType**](UsersType.md)                       |             | [default to &#39;users&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserCreateData.new(
  attributes: null,
  relationships: null,
  type: null
)
```

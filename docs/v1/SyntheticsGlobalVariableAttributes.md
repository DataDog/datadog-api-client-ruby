# DatadogAPIClient::V1::SyntheticsGlobalVariableAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restricted_roles** | **Array&lt;String&gt;** | List of role identifiers that can be pulled from the Roles API. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsGlobalVariableAttributes.new(
  restricted_roles: null
)
```


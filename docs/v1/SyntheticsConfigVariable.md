# DatadogAPIClient::V1::SyntheticsConfigVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **example** | **String** | Example for the variable. | [optional] |
| **id** | **String** | ID of the variable for global variables. | [optional] |
| **name** | **String** | Name of the variable. |  |
| **pattern** | **String** | Pattern of the variable. | [optional] |
| **type** | [**SyntheticsConfigVariableType**](SyntheticsConfigVariableType.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsConfigVariable.new(
  example: null,
  id: null,
  name: VARIABLE_NAME,
  pattern: null,
  type: null
)
```


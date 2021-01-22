# DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator** | [**SyntheticsAssertionJSONPathOperator**](SyntheticsAssertionJSONPathOperator.md) |  |  |
| **property** | **String** | The associated assertion property. | [optional] |
| **target** | [**SyntheticsAssertionJSONPathTargetTarget**](SyntheticsAssertionJSONPathTargetTarget.md) |  | [optional] |
| **type** | [**SyntheticsAssertionType**](SyntheticsAssertionType.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget.new(
  operator: null,
  property: null,
  target: null,
  type: null
)
```


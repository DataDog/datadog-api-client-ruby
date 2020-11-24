# DatadogAPIClient::V1::SyntheticsAssertionTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator** | [**SyntheticsAssertionOperator**](SyntheticsAssertionOperator.md) |  |  |
| **property** | **String** | The associated assertion property. | [optional] |
| **target** | **Object** | Value used by the operator. | [optional] |
| **type** | [**SyntheticsAssertionType**](SyntheticsAssertionType.md) |  |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAssertionTarget.new(
  operator: null,
  property: null,
  target: null,
  type: null
)
```


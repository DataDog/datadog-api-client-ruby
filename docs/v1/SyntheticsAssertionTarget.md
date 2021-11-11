# DatadogAPIClient::V1::SyntheticsAssertionTarget

## Properties

| Name         | Type                                                              | Description                        | Notes      |
| ------------ | ----------------------------------------------------------------- | ---------------------------------- | ---------- |
| **operator** | [**SyntheticsAssertionOperator**](SyntheticsAssertionOperator.md) |                                    |            |
| **property** | **String**                                                        | The associated assertion property. | [optional] |
| **target**   | **Object**                                                        | Value used by the operator.        |            |
| **type**     | [**SyntheticsAssertionType**](SyntheticsAssertionType.md)         |                                    |            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAssertionTarget.new(
  operator: null,
  property: null,
  target: 123456,
  type: null
)
```

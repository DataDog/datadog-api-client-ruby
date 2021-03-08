# DatadogAPIClient::V1::SyntheticsAPIStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assertions** | [**Array&lt;SyntheticsAssertion&gt;**](SyntheticsAssertion.md) | Array of assertions used for the test. | [optional] |
| **extracted_values** | [**Array&lt;SyntheticsParsingOptions&gt;**](SyntheticsParsingOptions.md) | Array of values to parse and save as variables from the response. | [optional] |
| **name** | **String** | The name of the step. | [optional] |
| **request** | [**SyntheticsTestRequest**](SyntheticsTestRequest.md) |  | [optional] |
| **subtype** | [**SyntheticsAPIStepSubtype**](SyntheticsAPIStepSubtype.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAPIStep.new(
  assertions: [],
  extracted_values: null,
  name: null,
  request: null,
  subtype: null
)
```


# DatadogAPIClient::V1::SyntheticsBatchResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device** | [**SyntheticsDeviceID**](SyntheticsDeviceID.md) |  | [optional] |
| **duration** | **Float** | Total duration in millisecond of the test. | [optional] |
| **execution_rule** | [**SyntheticsTestExecutionRule**](SyntheticsTestExecutionRule.md) |  | [optional] |
| **location** | **String** | Name of the location. | [optional] |
| **result_id** | **String** | The ID of the result to get. | [optional] |
| **retries** | **Float** | Total duration in millisecond of the test. | [optional] |
| **status** | [**SyntheticsStatus**](SyntheticsStatus.md) |  | [optional] |
| **test_name** | **String** | Name of the test. | [optional] |
| **test_public_id** | **String** | The public ID of the Synthetic test. | [optional] |
| **test_type** | [**SyntheticsTestDetailsType**](SyntheticsTestDetailsType.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBatchResult.new(
  device: null,
  duration: null,
  execution_rule: null,
  location: null,
  result_id: null,
  retries: null,
  status: null,
  test_name: null,
  test_public_id: null,
  test_type: null
)
```


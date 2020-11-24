# DatadogAPIClient::V1::SyntheticsTriggerCITestsResponseResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device** | [**SyntheticsDeviceID**](SyntheticsDeviceID.md) |  | [optional] |
| **location** | **Float** | The location ID of the test run. | [optional] |
| **public_id** | **String** | The public ID of the Synthetics test. | [optional] |
| **result_id** | **String** | ID of the result. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTriggerCITestsResponseResults.new(
  device: null,
  location: null,
  public_id: null,
  result_id: null
)
```


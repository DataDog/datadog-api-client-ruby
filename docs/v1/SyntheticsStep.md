# DatadogAPIClient::V1::SyntheticsStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_failure** | **Boolean** | A boolean set to allow this step to fail. | [optional] |
| **name** | **String** | The name of the step. | [optional] |
| **params** | **Object** | The parameters of the step. | [optional] |
| **timeout** | **Integer** | The time before declaring a step failed. | [optional] |
| **type** | [**SyntheticsStepType**](SyntheticsStepType.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsStep.new(
  allow_failure: null,
  name: null,
  params: null,
  timeout: null,
  type: null
)
```


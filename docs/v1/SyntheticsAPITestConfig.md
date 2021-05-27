# DatadogAPIClient::V1::SyntheticsAPITestConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assertions** | [**Array&lt;SyntheticsAssertion&gt;**](SyntheticsAssertion.md) | Array of assertions used for the test. | [optional] |
| **config_variables** | [**Array&lt;SyntheticsConfigVariable&gt;**](SyntheticsConfigVariable.md) | Array of variables used for the test. | [optional] |
| **request** | [**SyntheticsTestRequest**](SyntheticsTestRequest.md) |  | [optional] |
| **steps** | [**Array&lt;SyntheticsAPIStep&gt;**](SyntheticsAPIStep.md) | When the test subtype is &#x60;multi&#x60;, the steps of the test. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAPITestConfig.new(
  assertions: [],
  config_variables: null,
  request: null,
  steps: null
)
```


# DatadogAPIClient::V1::SyntheticsTestConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assertions** | [**Array&lt;SyntheticsAssertion&gt;**](SyntheticsAssertion.md) | Array of assertions used for the test. | [optional] |
| **config_variables** | [**Array&lt;SyntheticsConfigVariable&gt;**](SyntheticsConfigVariable.md) | API tests only - array of variables used for the test. | [optional] |
| **request** | [**SyntheticsTestRequest**](SyntheticsTestRequest.md) |  | [optional] |
| **variables** | [**Array&lt;SyntheticsBrowserVariable&gt;**](SyntheticsBrowserVariable.md) | Browser tests only - array of variables used for the test steps. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestConfig.new(
  assertions: [],
  config_variables: null,
  request: null,
  variables: null
)
```


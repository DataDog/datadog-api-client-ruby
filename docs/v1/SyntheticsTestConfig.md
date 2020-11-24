# DatadogAPIClient::V1::SyntheticsTestConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assertions** | [**Array&lt;SyntheticsAssertion&gt;**](SyntheticsAssertion.md) | Array of assertions used for the test. |  |
| **request** | [**SyntheticsTestRequest**](SyntheticsTestRequest.md) |  |  |
| **variables** | [**Array&lt;SyntheticsBrowserVariable&gt;**](SyntheticsBrowserVariable.md) | Array of variables used for the test. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestConfig.new(
  assertions: [],
  request: null,
  variables: null
)
```


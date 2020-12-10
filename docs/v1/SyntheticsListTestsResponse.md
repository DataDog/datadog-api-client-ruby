# DatadogAPIClient::V1::SyntheticsListTestsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tests** | [**Array&lt;SyntheticsTestDetails&gt;**](SyntheticsTestDetails.md) | Array of Synthetic tests configuration. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsListTestsResponse.new(
  tests: null
)
```


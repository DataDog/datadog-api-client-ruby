# DatadogAPIClient::V1::SyntheticsDeleteTestsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted_tests** | [**Array&lt;SyntheticsDeleteTestsResponseDeletedTests&gt;**](SyntheticsDeleteTestsResponseDeletedTests.md) | Array of objects containing a deleted Synthetic test ID with the associated deletion timestamp. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsDeleteTestsResponse.new(
  deleted_tests: null
)
```


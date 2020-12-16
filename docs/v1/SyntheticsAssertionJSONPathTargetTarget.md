# DatadogAPIClient::V1::SyntheticsAssertionJSONPathTargetTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **json_path** | **String** | The JSON path to assert. | [optional] |
| **operator** | **String** | The specific operator to use on the path. | [optional] |
| **target_value** | **Object** | The path target value to compare to. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAssertionJSONPathTargetTarget.new(
  json_path: null,
  operator: null,
  target_value: null
)
```


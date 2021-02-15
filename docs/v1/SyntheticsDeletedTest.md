# DatadogAPIClient::V1::SyntheticsDeletedTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted_at** | **Time** | Deletion timestamp of the Synthetic test ID. | [optional] |
| **public_id** | **String** | The Synthetic test ID deleted. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsDeletedTest.new(
  deleted_at: null,
  public_id: null
)
```


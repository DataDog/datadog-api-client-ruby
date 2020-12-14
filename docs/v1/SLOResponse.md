# DatadogAPIClient::V1::SLOResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ServiceLevelObjective**](ServiceLevelObjective.md) |  | [optional] |
| **errors** | **Array&lt;String&gt;** | An array of error messages. Each endpoint documents how/whether this field is used. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOResponse.new(
  data: null,
  errors: null
)
```


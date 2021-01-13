# DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | [**SLOCorrectionCategory**](SLOCorrectionCategory.md) |  |  |
| **description** | **String** | Description of the correction being made. | [optional] |
| **_end** | **Integer** | Ending time of the correction in epoch seconds |  |
| **start** | **Integer** | Starting time of the correction in epoch seconds |  |
| **timezone** | **String** | Timezone of the timestamps provided |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes.new(
  category: null,
  description: null,
  _end: 1600000000,
  start: 1600000000,
  timezone: UTC
)
```


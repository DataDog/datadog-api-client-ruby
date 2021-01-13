# DatadogAPIClient::V1::SLOCorrectionCreateRequestAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | [**SLOCorrectionCategory**](SLOCorrectionCategory.md) |  |  |
| **description** | **String** | Description of the correction being made. | [optional] |
| **_end** | **Integer** | Ending time of the correction in epoch seconds |  |
| **slo_id** | **String** | ID of the SLO that this correction will be applied to |  |
| **start** | **Integer** | Starting time of the correction in epoch seconds |  |
| **timezone** | **String** | Timezone of the timestamps provided |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionCreateRequestAttributes.new(
  category: null,
  description: null,
  _end: 1600000000,
  slo_id: sloId,
  start: 1600000000,
  timezone: UTC
)
```


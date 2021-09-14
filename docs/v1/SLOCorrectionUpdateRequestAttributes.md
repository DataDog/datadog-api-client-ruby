# DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | [**SLOCorrectionCategory**](SLOCorrectionCategory.md) |  | [optional] |
| **description** | **String** | Description of the correction being made. | [optional] |
| **_end** | **Integer** | Ending time of the correction in epoch seconds. | [optional] |
| **start** | **Integer** | Starting time of the correction in epoch seconds. | [optional] |
| **timezone** | **String** | The timezone to display in the UI for the correction times (defaults to \&quot;UTC\&quot;). | [optional] |

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


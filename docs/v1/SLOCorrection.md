# DatadogAPIClient::V1::SLOCorrection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**SLOCorrectionResponseAttributes**](SLOCorrectionResponseAttributes.md) |  | [optional] |
| **id** | **String** | The ID of the SLO correction. | [optional] |
| **type** | [**SLOCorrectionType**](SLOCorrectionType.md) |  | [optional][default to &#39;correction&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrection.new(
  attributes: null,
  id: null,
  type: null
)
```


# DatadogAPIClient::V1::SLOCorrectionResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**SLOCorrectionResponseAttributes**](SLOCorrectionResponseAttributes.md) |  | [optional] |
| **id** | **String** | The ID of the SLO correction | [optional] |
| **type** | **String** | Should always return \&quot;correction\&quot; | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionResponseData.new(
  attributes: null,
  id: null,
  type: null
)
```


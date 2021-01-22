# DatadogAPIClient::V1::SLOCorrectionListResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**SLOCorrectionResponseAttributes**](SLOCorrectionResponseAttributes.md) |  | [optional] |
| **id** | **String** | The ID of the SLO correction | [optional] |
| **type** | **String** | Should always be set to \&quot;correction\&quot; | [optional][default to &#39;correction&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionListResponseData.new(
  attributes: null,
  id: null,
  type: null
)
```


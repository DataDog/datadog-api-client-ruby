# DatadogAPIClient::V1::SLOCorrectionUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**SLOCorrectionUpdateRequestAttributes**](SLOCorrectionUpdateRequestAttributes.md) |  | [optional] |
| **type** | **String** | Should always be set to \&quot;correction\&quot; | [optional][default to &#39;correction&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionUpdateRequestData.new(
  attributes: null,
  type: null
)
```


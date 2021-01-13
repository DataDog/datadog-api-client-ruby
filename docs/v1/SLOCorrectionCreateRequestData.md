# DatadogAPIClient::V1::SLOCorrectionCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**SLOCorrectionCreateRequestAttributes**](SLOCorrectionCreateRequestAttributes.md) |  | [optional] |
| **type** | **String** | Should always be set to \&quot;correction\&quot; | [optional][default to &#39;correction&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionCreateRequestData.new(
  attributes: null,
  type: null
)
```


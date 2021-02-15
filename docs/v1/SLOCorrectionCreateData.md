# DatadogAPIClient::V1::SLOCorrectionCreateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**SLOCorrectionCreateRequestAttributes**](SLOCorrectionCreateRequestAttributes.md) |  | [optional] |
| **type** | [**SLOCorrectionType**](SLOCorrectionType.md) |  | [optional][default to &#39;correction&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionCreateData.new(
  attributes: null,
  type: null
)
```


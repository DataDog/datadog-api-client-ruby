# DatadogAPIClient::V1::UsageCustomReportsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**UsageCustomReportsAttributes**](UsageCustomReportsAttributes.md) |  | [optional] |
| **id** | **String** | The date for specified custom reports. | [optional] |
| **type** | [**UsageReportsType**](UsageReportsType.md) |  | [optional][default to &#39;reports&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageCustomReportsData.new(
  attributes: null,
  id: null,
  type: null
)
```


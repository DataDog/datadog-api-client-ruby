# DatadogAPIClient::V2::SecurityMonitoringSignal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**SecurityMonitoringSignalAttributes**](SecurityMonitoringSignalAttributes.md) |  | [optional] |
| **id** | **String** | The unique ID of the security signal. | [optional] |
| **type** | [**SecurityMonitoringSignalType**](SecurityMonitoringSignalType.md) |  | [optional][default to &#39;signal&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringSignal.new(
  attributes: null,
  id: AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA,
  type: null
)
```


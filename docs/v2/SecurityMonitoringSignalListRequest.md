# DatadogAPIClient::V2::SecurityMonitoringSignalListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | [**SecurityMonitoringSignalListRequestFilter**](SecurityMonitoringSignalListRequestFilter.md) |  | [optional] |
| **page** | [**SecurityMonitoringSignalListRequestPage**](SecurityMonitoringSignalListRequestPage.md) |  | [optional] |
| **sort** | [**SecurityMonitoringSignalsSort**](SecurityMonitoringSignalsSort.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringSignalListRequest.new(
  filter: null,
  page: null,
  sort: null
)
```


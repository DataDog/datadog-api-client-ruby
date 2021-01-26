# DatadogAPIClient::V2::SecurityMonitoringFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**SecurityMonitoringFilterAction**](SecurityMonitoringFilterAction.md) |  | [optional] |
| **query** | **String** | Query for selecting logs to apply the filtering action. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringFilter.new(
  action: null,
  query: null
)
```


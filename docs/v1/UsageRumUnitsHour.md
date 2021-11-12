# DatadogAPIClient::V1::UsageRumUnitsHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **browser_rum_lite_session_count** | **Integer** | Number of browser RUM lite sessions. | [optional] |
| **browser_rum_replay_session_count** | **Integer** | Number of browser RUM replay sessions. | [optional] |
| **browser_rum_units** | **Integer** | The number of browser RUM units. | [optional] |
| **mobile_rum_lite_session_count** | **Integer** | Number of mobile RUM lite sessions. | [optional] |
| **mobile_rum_units** | **Integer** | The number of mobile RUM units. | [optional] |
| **org_name** | **String** | The organization name. | [optional] |
| **public_id** | **String** | The organization public ID. | [optional] |
| **rum_units** | **Integer** | Total RUM units across mobile and browser RUM. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageRumUnitsHour.new(
  browser_rum_lite_session_count: null,
  browser_rum_replay_session_count: null,
  browser_rum_units: null,
  mobile_rum_lite_session_count: null,
  mobile_rum_units: null,
  org_name: null,
  public_id: null,
  rum_units: null
)
```


# DatadogAPIClient::V1::UsageCloudSecurityPostureManagementHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **container_count** | **Integer** | The total number of Cloud Security Posture Management containers during a given hour. | [optional] |
| **host_count** | **Integer** | The total number of Cloud Security Posture Management hosts during a given hour. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageCloudSecurityPostureManagementHour.new(
  container_count: null,
  host_count: null,
  hour: null
)
```


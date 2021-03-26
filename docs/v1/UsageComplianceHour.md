# DatadogAPIClient::V1::UsageComplianceHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compliance_container_count** | **Integer** | The total number of compliance container hours from the start of the given hour&#39;s month until the given hour. | [optional] |
| **compliance_host_count** | **Integer** | The total number of compliance hosts hours from the start of the given hour&#39;s month until the given hour. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageComplianceHour.new(
  compliance_container_count: null,
  compliance_host_count: null,
  hour: null
)
```


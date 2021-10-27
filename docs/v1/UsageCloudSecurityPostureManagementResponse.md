# DatadogAPIClient::V1::UsageCloudSecurityPostureManagementResponse

## Properties

| Name      | Type                                                                                                   | Description                                             | Notes      |
| --------- | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageCloudSecurityPostureManagementHour&gt;**](UsageCloudSecurityPostureManagementHour.md) | Get hourly usage for Cloud Security Posture Management. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageCloudSecurityPostureManagementResponse.new(
  usage: null
)
```

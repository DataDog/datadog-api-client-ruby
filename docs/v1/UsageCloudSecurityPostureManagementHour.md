# DatadogAPIClient::V1::UsageCloudSecurityPostureManagementHour

## Properties

| Name                      | Type       | Description                                                                                   | Notes      |
| ------------------------- | ---------- | --------------------------------------------------------------------------------------------- | ---------- |
| **aas_host_count**        | **Float**  | The number of Cloud Security Posture Management Azure app services hosts during a given hour. | [optional] |
| **azure_host_count**      | **Float**  | The number of Cloud Security Posture Management Azure hosts during a given hour.              | [optional] |
| **compliance_host_count** | **Float**  | The number of Cloud Security Posture Management hosts during a given hour.                    | [optional] |
| **container_count**       | **Float**  | The total number of Cloud Security Posture Management containers during a given hour.         | [optional] |
| **host_count**            | **Float**  | The total number of Cloud Security Posture Management hosts during a given hour.              | [optional] |
| **hour**                  | **Time**   | The hour for the usage.                                                                       | [optional] |
| **org_name**              | **String** | The organization name.                                                                        | [optional] |
| **public_id**             | **String** | The organization public ID.                                                                   | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageCloudSecurityPostureManagementHour.new(
  aas_host_count: null,
  azure_host_count: null,
  compliance_host_count: null,
  container_count: null,
  host_count: null,
  hour: null,
  org_name: null,
  public_id: null
)
```

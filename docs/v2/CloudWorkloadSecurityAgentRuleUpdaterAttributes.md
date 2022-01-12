# DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdaterAttributes

## Properties

| Name       | Type       | Description             | Notes      |
| ---------- | ---------- | ----------------------- | ---------- |
| **handle** | **String** | The handle of the user. | [optional] |
| **name**   | **String** | The name of the user.   | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdaterAttributes.new(
  handle: datadog.user@example.com,
  name: Datadog User
)
```

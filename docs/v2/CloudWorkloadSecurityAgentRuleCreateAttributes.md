# DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes

## Properties

| Name            | Type        | Description                            | Notes      |
| --------------- | ----------- | -------------------------------------- | ---------- |
| **description** | **String**  | The description of the Agent rule.     | [optional] |
| **enabled**     | **Boolean** | Whether the Agent rule is enabled.     | [optional] |
| **expression**  | **String**  | The SECL expression of the Agent rule. |            |
| **name**        | **String**  | The name of the Agent rule.            |            |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new(
  description: My Agent rule,
  enabled: true,
  expression: exec.file.name &#x3D;&#x3D; \&quot;sh\&quot;,
  name: my_agent_rule
)
```

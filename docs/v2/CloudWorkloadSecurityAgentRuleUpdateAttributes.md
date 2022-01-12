# DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes

## Properties

| Name            | Type        | Description                            | Notes      |
| --------------- | ----------- | -------------------------------------- | ---------- |
| **description** | **String**  | The description of the Agent rule.     | [optional] |
| **enabled**     | **Boolean** | Whether the Agent rule is enabled.     | [optional] |
| **expression**  | **String**  | The SECL expression of the Agent rule. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes.new(
  description: My Agent rule,
  enabled: true,
  expression: exec.file.name &#x3D;&#x3D; \&quot;sh\&quot;
)
```

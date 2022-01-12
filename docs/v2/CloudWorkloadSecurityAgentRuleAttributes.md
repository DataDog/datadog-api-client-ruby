# DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAttributes

## Properties

| Name              | Type                                                                                                      | Description                                                      | Notes      |
| ----------------- | --------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ---------- |
| **category**      | **String**                                                                                                | The category of the Agent rule.                                  | [optional] |
| **creation_date** | **Integer**                                                                                               | When the Agent rule was created, timestamp in milliseconds.      | [optional] |
| **creator**       | [**CloudWorkloadSecurityAgentRuleCreatorAttributes**](CloudWorkloadSecurityAgentRuleCreatorAttributes.md) |                                                                  | [optional] |
| **default_rule**  | **Boolean**                                                                                               | Whether the rule is included by default.                         | [optional] |
| **description**   | **String**                                                                                                | The description of the Agent rule.                               | [optional] |
| **enabled**       | **Boolean**                                                                                               | Whether the Agent rule is enabled.                               | [optional] |
| **expression**    | **String**                                                                                                | The SECL expression of the Agent rule.                           | [optional] |
| **name**          | **String**                                                                                                | The name of the Agent rule.                                      | [optional] |
| **updated_at**    | **Integer**                                                                                               | When the Agent rule was last updated, timestamp in milliseconds. | [optional] |
| **updater**       | [**CloudWorkloadSecurityAgentRuleUpdaterAttributes**](CloudWorkloadSecurityAgentRuleUpdaterAttributes.md) |                                                                  | [optional] |
| **version**       | **Integer**                                                                                               | The version of the Agent rule.                                   | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAttributes.new(
  category: Process Activity,
  creation_date: 1624366480320,
  creator: null,
  default_rule: false,
  description: My Agent rule,
  enabled: true,
  expression: exec.file.name &#x3D;&#x3D; \&quot;sh\&quot;,
  name: my_agent_rule,
  updated_at: 1624366480320,
  updater: null,
  version: 23
)
```

# DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData

## Properties

| Name           | Type                                                                                                    | Description | Notes                             |
| -------------- | ------------------------------------------------------------------------------------------------------- | ----------- | --------------------------------- |
| **attributes** | [**CloudWorkloadSecurityAgentRuleUpdateAttributes**](CloudWorkloadSecurityAgentRuleUpdateAttributes.md) |             |                                   |
| **type**       | [**CloudWorkloadSecurityAgentRuleType**](CloudWorkloadSecurityAgentRuleType.md)                         |             | [default to &#39;agent_rule&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData.new(
  attributes: null,
  type: null
)
```

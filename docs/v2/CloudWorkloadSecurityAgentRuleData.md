# DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleData

## Properties

| Name           | Type                                                                                        | Description               | Notes                                       |
| -------------- | ------------------------------------------------------------------------------------------- | ------------------------- | ------------------------------------------- |
| **attributes** | [**CloudWorkloadSecurityAgentRuleAttributes**](CloudWorkloadSecurityAgentRuleAttributes.md) |                           | [optional]                                  |
| **id**         | **String**                                                                                  | The ID of the Agent rule. | [optional]                                  |
| **type**       | [**CloudWorkloadSecurityAgentRuleType**](CloudWorkloadSecurityAgentRuleType.md)             |                           | [optional][default to &#39;agent_rule&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleData.new(
  attributes: null,
  id: 3dd-0uc-h1s,
  type: null
)
```

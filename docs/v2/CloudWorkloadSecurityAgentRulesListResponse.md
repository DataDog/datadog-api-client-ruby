# DatadogAPIClient::V2::CloudWorkloadSecurityAgentRulesListResponse

## Properties

| Name     | Type                                                                                                     | Description                    | Notes      |
| -------- | -------------------------------------------------------------------------------------------------------- | ------------------------------ | ---------- |
| **data** | [**Array&lt;CloudWorkloadSecurityAgentRuleAttributes&gt;**](CloudWorkloadSecurityAgentRuleAttributes.md) | A list of Agent rules objects. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRulesListResponse.new(
  data: null
)
```

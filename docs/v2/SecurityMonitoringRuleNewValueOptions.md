# DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptions

## Properties

| Name                  | Type                                                                                                                  | Description | Notes      |
| --------------------- | --------------------------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **forget_after**      | [**SecurityMonitoringRuleNewValueOptionsForgetAfter**](SecurityMonitoringRuleNewValueOptionsForgetAfter.md)           |             | [optional] |
| **learning_duration** | [**SecurityMonitoringRuleNewValueOptionsLearningDuration**](SecurityMonitoringRuleNewValueOptionsLearningDuration.md) |             | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptions.new(
  forget_after: null,
  learning_duration: null
)
```

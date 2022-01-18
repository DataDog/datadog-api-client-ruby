# DatadogAPIClient::V2::SecurityMonitoringRuleOptions

## Properties

| Name                         | Type                                                                                      | Description | Notes      |
| ---------------------------- | ----------------------------------------------------------------------------------------- | ----------- | ---------- |
| **detection_method**         | [**SecurityMonitoringRuleDetectionMethod**](SecurityMonitoringRuleDetectionMethod.md)     |             | [optional] |
| **evaluation_window**        | [**SecurityMonitoringRuleEvaluationWindow**](SecurityMonitoringRuleEvaluationWindow.md)   |             | [optional] |
| **keep_alive**               | [**SecurityMonitoringRuleKeepAlive**](SecurityMonitoringRuleKeepAlive.md)                 |             | [optional] |
| **max_signal_duration**      | [**SecurityMonitoringRuleMaxSignalDuration**](SecurityMonitoringRuleMaxSignalDuration.md) |             | [optional] |
| **new_value_options**        | [**SecurityMonitoringRuleNewValueOptions**](SecurityMonitoringRuleNewValueOptions.md)     |             | [optional] |
| **third_party_rule_options** | [**SecurityMonitoringRuleThirdPartyOptions**](SecurityMonitoringRuleThirdPartyOptions.md) |             | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new(
  detection_method: null,
  evaluation_window: null,
  keep_alive: null,
  max_signal_duration: null,
  new_value_options: null,
  third_party_rule_options: null
)
```

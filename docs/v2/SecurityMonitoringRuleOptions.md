# DatadogAPIClient::V2::SecurityMonitoringRuleOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**evaluation_window** | [**SecurityMonitoringRuleEvaluationWindow**](SecurityMonitoringRuleEvaluationWindow.md) |  | [optional] 
**keep_alive** | [**SecurityMonitoringRuleKeepAlive**](SecurityMonitoringRuleKeepAlive.md) |  | [optional] 
**max_signal_duration** | [**SecurityMonitoringRuleMaxSignalDuration**](SecurityMonitoringRuleMaxSignalDuration.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new(evaluation_window: null,
                                 keep_alive: null,
                                 max_signal_duration: null)
```



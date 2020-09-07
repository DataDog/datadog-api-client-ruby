# DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cases** | [**Array&lt;SecurityMonitoringRuleCase&gt;**](SecurityMonitoringRuleCase.md) | Cases for generating signals. | [optional] 
**is_enabled** | **Boolean** | Whether the rule is enabled. | [optional] 
**message** | **String** | Message for generated signals. | [optional] 
**name** | **String** | Name of the rule. | [optional] 
**options** | [**SecurityMonitoringRuleOptions**](SecurityMonitoringRuleOptions.md) |  | [optional] 
**queries** | [**Array&lt;SecurityMonitoringRuleQuery&gt;**](SecurityMonitoringRuleQuery.md) | Queries for selecting logs which are part of the rule. | [optional] 
**tags** | **Array&lt;String&gt;** | Tags for generated signals. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload.new(cases: null,
                                 is_enabled: null,
                                 message: null,
                                 name: null,
                                 options: null,
                                 queries: null,
                                 tags: null)
```



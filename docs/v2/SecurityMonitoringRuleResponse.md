# DatadogAPIClient::V2::SecurityMonitoringRuleResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cases** | [**Array&lt;SecurityMonitoringRuleCase&gt;**](SecurityMonitoringRuleCase.md) | Cases for generating signals. | [optional] 
**created_at** | **Integer** | When the rule was created, timestamp in milliseconds. | [optional] 
**creation_author_id** | **Integer** | User ID of the user who created the rule. | [optional] 
**id** | **String** | The ID of the rule. | [optional] 
**is_default** | **Boolean** | Whether the rule is included by default. | [optional] 
**is_deleted** | **Boolean** | Whether the rule has been deleted. | [optional] 
**is_enabled** | **Boolean** | Whether the rule is enabled. | [optional] 
**message** | **String** | Message for generated signals. | [optional] 
**name** | **String** | The name of the rule. | [optional] 
**options** | [**SecurityMonitoringRuleOptions**](SecurityMonitoringRuleOptions.md) |  | [optional] 
**queries** | [**Array&lt;SecurityMonitoringRuleQuery&gt;**](SecurityMonitoringRuleQuery.md) | Queries for selecting logs which are part of the rule. | [optional] 
**tags** | **Array&lt;String&gt;** | Tags for generated signals. | [optional] 
**version** | **Integer** | The version of the rule. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleResponse.new(cases: null,
                                 created_at: null,
                                 creation_author_id: null,
                                 id: null,
                                 is_default: null,
                                 is_deleted: null,
                                 is_enabled: null,
                                 message: null,
                                 name: null,
                                 options: null,
                                 queries: null,
                                 tags: null,
                                 version: null)
```



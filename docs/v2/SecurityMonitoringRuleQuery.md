# DatadogAPIClient::V2::SecurityMonitoringRuleQuery

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**distinct_fields** | **Array&lt;String&gt;** | Field for which the cardinality is measured. Sent as an array. | [optional] 
**group_by_fields** | **Array&lt;String&gt;** | Fields to group by. | [optional] 
**name** | **String** | Name of the query. | [optional] 
**query** | **String** | Query to run on logs. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleQuery.new(distinct_fields: null,
                                 group_by_fields: null,
                                 name: null,
                                 query: null)
```



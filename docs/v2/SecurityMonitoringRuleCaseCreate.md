# DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | A rule case contains logical operations (&#x60;&gt;&#x60;,&#x60;&gt;&#x3D;&#x60;, &#x60;&amp;&amp;&#x60;, &#x60;||&#x60;) to determine if a signal should be generated based on the event counts in the previously defined queries. | [optional] 
**name** | **String** | Name of the case. | [optional] 
**notifications** | **Array&lt;String&gt;** | Notification targets for each rule case. | [optional] 
**status** | [**SecurityMonitoringRuleSeverity**](SecurityMonitoringRuleSeverity.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new(condition: null,
                                 name: null,
                                 notifications: null,
                                 status: null)
```



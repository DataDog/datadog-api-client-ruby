# DatadogAPIClient::V2::SecurityMonitoringSignalAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | **Hash&lt;String, Object&gt;** | A JSON object of attributes in the security signal. | [optional] 
**message** | **String** | The message in the security signal defined by the rule that generated the signal. | [optional] 
**tags** | **Array&lt;Object&gt;** | An array of tags associated with the security signal. | [optional] 
**timestamp** | **DateTime** | The timestamp of the security signal. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::SecurityMonitoringSignalAttributes.new(attributes: {&quot;workflow&quot;:{&quot;first_seen&quot;:&quot;2020-06-23T14:46:01.000Z&quot;,&quot;last_seen&quot;:&quot;2020-06-23T14:46:49.000Z&quot;,&quot;rule&quot;:{&quot;id&quot;:&quot;0f5-e0c-805&quot;,&quot;name&quot;:&quot;Brute Force Attack Grouped By User &quot;,&quot;version&quot;:12}}},
                                 message: Detect Account Take Over (ATO) through brute force attempts,
                                 tags: [&quot;security:attack&quot;,&quot;technique:T1110-brute-force&quot;],
                                 timestamp: 2019-01-02T09:42:36.320Z)
```



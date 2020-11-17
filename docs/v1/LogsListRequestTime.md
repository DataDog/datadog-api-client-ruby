# DatadogAPIClient::V1::LogsListRequestTime

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **Time** | Minimum timestamp for requested logs. | 
**timezone** | **String** | Timezone can be specified both as an offset (e.g. \&quot;UTC+03:00\&quot;) or a regional zone (e.g. \&quot;Europe/Paris\&quot;). | [optional] 
**to** | **Time** | Maximum timestamp for requested logs. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsListRequestTime.new(from: 2020-02-02T02:02:02Z,
                                 timezone: null,
                                 to: 2020-02-02T20:20:20Z)
```



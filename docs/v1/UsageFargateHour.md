# DatadogAPIClient::V1::UsageFargateHour

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hour** | **DateTime** | The hour for the usage. | [optional] 
**tasks_count** | **Integer** | The number of Fargate tasks run. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageFargateHour.new(hour: null,
                                 tasks_count: null)
```



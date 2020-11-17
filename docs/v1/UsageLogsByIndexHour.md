# DatadogAPIClient::V1::UsageLogsByIndexHour

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_count** | **Integer** | The total number of indexed logs for the queried hour. | [optional] 
**hour** | **Time** | The hour for the usage. | [optional] 
**index_id** | **String** | The index ID for this usage. | [optional] 
**index_name** | **String** | The user specified name for this index ID. | [optional] 
**retention** | **Integer** | The retention period (in days) for this index ID. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageLogsByIndexHour.new(event_count: null,
                                 hour: null,
                                 index_id: null,
                                 index_name: null,
                                 retention: null)
```



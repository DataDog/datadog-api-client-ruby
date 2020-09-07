# DatadogAPIClient::V2::LogsGroupByHistogram

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**interval** | **Float** | The bin size of the histogram buckets | 
**max** | **Float** | The maximum value for the measure used in the histogram (values greater than this one are filtered out) | 
**min** | **Float** | The minimum value for the measure used in the histogram (values smaller than this one are filtered out) | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsGroupByHistogram.new(interval: 10,
                                 max: 100,
                                 min: 50)
```



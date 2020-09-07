# DatadogAPIClient::V1::HostMetrics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **Float** | The percent of CPU used (everything but idle). | [optional] 
**iowait** | **Float** | The percent of CPU spent waiting on the IO (not reported for all platforms). | [optional] 
**load** | **Float** | The system load over the last 15 minutes. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::HostMetrics.new(cpu: 99.0,
                                 iowait: 3.2,
                                 load: 0.5)
```



# DatadogAPIClient::V1::LogsIndex

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daily_limit** | **Integer** | The number of log events you can send in this index per day before you are rate-limited. | [optional] 
**exclusion_filters** | [**Array&lt;LogsExclusion&gt;**](LogsExclusion.md) | An array of exclusion objects. The logs are tested against the query of each filter, following the order of the array. Only the first matching active exclusion matters, others (if any) are ignored. | [optional] 
**filter** | [**LogsFilter**](LogsFilter.md) |  | 
**is_rate_limited** | **Boolean** | A boolean stating if the index is rate limited, meaning more logs than the daily limit have been sent. Rate limit is reset every-day at 2pm UTC. | [optional] [readonly] 
**name** | **String** | The name of the index. | [optional] [readonly] 
**num_retention_days** | **Integer** | The number of days before logs are deleted from this index. Available values depend on retention plans specified in your organization&#39;s contract/subscriptions. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsIndex.new(daily_limit: null,
                                 exclusion_filters: null,
                                 filter: null,
                                 is_rate_limited: null,
                                 name: null,
                                 num_retention_days: null)
```



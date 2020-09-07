# DatadogAPIClient::V1::HostListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_list** | [**Array&lt;Host&gt;**](Host.md) | Array of hosts. | [optional] 
**total_matching** | **Integer** | Number of host matching the query. | [optional] 
**total_returned** | **Integer** | Number of host returned. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::HostListResponse.new(host_list: null,
                                 total_matching: 1,
                                 total_returned: 1)
```



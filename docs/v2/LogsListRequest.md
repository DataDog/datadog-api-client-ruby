# DatadogAPIClient::V2::LogsListRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filter** | [**LogsQueryFilter**](LogsQueryFilter.md) |  | [optional] 
**options** | [**LogsQueryOptions**](LogsQueryOptions.md) |  | [optional] 
**page** | [**LogsListRequestPage**](LogsListRequestPage.md) |  | [optional] 
**sort** | [**LogsSort**](LogsSort.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsListRequest.new(filter: null,
                                 options: null,
                                 page: null,
                                 sort: null)
```



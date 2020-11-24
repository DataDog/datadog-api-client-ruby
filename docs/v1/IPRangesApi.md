# DatadogAPIClient::V1::IPRangesApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ip_ranges**](IPRangesApi.md#get_ip_ranges) | **GET** / | List IP Ranges |


## get_ip_ranges

> IPRanges get_ip_ranges

List IP Ranges

Get information about Datadog IP ranges.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'

api_instance = DatadogAPIClient::V1::IPRangesApi.new

begin
  #List IP Ranges
  result = api_instance.get_ip_ranges
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling IPRangesApi->get_ip_ranges: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IPRanges**](IPRanges.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


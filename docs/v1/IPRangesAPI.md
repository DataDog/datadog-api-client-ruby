# DatadogAPIClient::V1::IPRangesAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ip_ranges**](IPRangesAPI.md#get_ip_ranges) | **GET** / | List IP Ranges |


## get_ip_ranges

> <IPRanges> get_ip_ranges

Get information about Datadog IP ranges.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::IPRangesAPI.new

begin
  # List IP Ranges
  result = api_instance.get_ip_ranges
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling IPRangesAPI->get_ip_ranges: #{e}"
end
```

#### Using the get_ip_ranges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IPRanges>, Integer, Hash)> get_ip_ranges_with_http_info

```ruby
begin
  # List IP Ranges
  data, status_code, headers = api_instance.get_ip_ranges_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IPRanges>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling IPRangesAPI->get_ip_ranges_with_http_info: #{e}"
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


# DatadogAPIClient::V1::EventsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_event**](EventsApi.md#get_event) | **GET** /api/v1/events/{event_id} | Get an event
[**list_events**](EventsApi.md#list_events) | **GET** /api/v1/events | Query the event stream



## get_event

> EventResponse get_event(event_id)

Get an event

This endpoint allows you to query for event details.  **Note**: If the event you’re querying contains markdown formatting of any kind, you may see characters such as `%`,`\\`,`n` in your output.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::EventsApi.new
event_id = 56 # Integer | The ID of the event.

begin
  #Get an event
  result = api_instance.get_event(event_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling EventsApi->get_event: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **Integer**| The ID of the event. | 

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_events

> EventListResponse list_events(start, _end, opts)

Query the event stream

The event stream can be queried and filtered by time, priority, sources and tags.  **Notes**: - If the event you’re querying contains markdown formatting of any kind, you may see characters such as `%`,`\\`,`n` in your output.  - This endpoint returns a maximum of `1000` most recent results. To return additional results, identify the last timestamp of the last result and set that as the `end` query time to paginate the results.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::EventsApi.new
start = 56 # Integer | POSIX timestamp.
_end = 56 # Integer | POSIX timestamp.
opts = {
  priority: DatadogAPIClient::V1::EventPriority.new, # EventPriority | Priority of your events, either `low` or `normal`.
  sources: 'sources_example', # String | A comma separated string of sources.
  tags: 'host:host0', # String | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.
  unaggregated: true # Boolean | Set unaggregated to `true` to return all events within the specified [`start`,`end`] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won't be available in the output.
}

begin
  #Query the event stream
  result = api_instance.list_events(start, _end, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling EventsApi->list_events: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| POSIX timestamp. | 
 **_end** | **Integer**| POSIX timestamp. | 
 **priority** | [**EventPriority**](.md)| Priority of your events, either &#x60;low&#x60; or &#x60;normal&#x60;. | [optional] 
 **sources** | **String**| A comma separated string of sources. | [optional] 
 **tags** | **String**| A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope. | [optional] 
 **unaggregated** | **Boolean**| Set unaggregated to &#x60;true&#x60; to return all events within the specified [&#x60;start&#x60;,&#x60;end&#x60;] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won&#39;t be available in the output. | [optional] 

### Return type

[**EventListResponse**](EventListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# DatadogAPIClient::V1::SnapshotsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_graph_snapshot**](SnapshotsApi.md#get_graph_snapshot) | **GET** /api/v1/graph/snapshot | Take graph snapshots |


## get_graph_snapshot

> <GraphSnapshot> get_graph_snapshot(start, _end, opts)

Take graph snapshots

Take graph snapshots. **Note**: When a snapshot is created, there is some delay before it is available.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V1::SnapshotsApi.new
start = 56 # Integer | The POSIX timestamp of the start of the query.
_end = 56 # Integer | The POSIX timestamp of the end of the query.
opts = {
  metric_query: 'metric_query_example', # String | The metric query.
  event_query: 'event_query_example', # String | A query that adds event bands to the graph.
  graph_def: 'graph_def_example', # String | A JSON document defining the graph. `graph_def` can be used instead of `metric_query`. The JSON document uses the [grammar defined here](https://docs.datadoghq.com/graphing/graphing_json/#grammar) and should be formatted to a single line then URL encoded.
  title: 'title_example' # String | A title for the graph. If no title is specified, the graph does not have a title.
}

begin
  # Take graph snapshots
  result = api_instance.get_graph_snapshot(start, _end, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SnapshotsApi->get_graph_snapshot: #{e}"
end
```

#### Using the get_graph_snapshot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GraphSnapshot>, Integer, Hash)> get_graph_snapshot_with_http_info(start, _end, opts)

```ruby
begin
  # Take graph snapshots
  data, status_code, headers = api_instance.get_graph_snapshot_with_http_info(start, _end, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GraphSnapshot>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SnapshotsApi->get_graph_snapshot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | The POSIX timestamp of the start of the query. |  |
| **_end** | **Integer** | The POSIX timestamp of the end of the query. |  |
| **metric_query** | **String** | The metric query. | [optional] |
| **event_query** | **String** | A query that adds event bands to the graph. | [optional] |
| **graph_def** | **String** | A JSON document defining the graph. &#x60;graph_def&#x60; can be used instead of &#x60;metric_query&#x60;. The JSON document uses the [grammar defined here](https://docs.datadoghq.com/graphing/graphing_json/#grammar) and should be formatted to a single line then URL encoded. | [optional] |
| **title** | **String** | A title for the graph. If no title is specified, the graph does not have a title. | [optional] |

### Return type

[**GraphSnapshot**](GraphSnapshot.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


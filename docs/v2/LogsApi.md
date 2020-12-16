# DatadogAPIClient::V2::LogsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_logs**](LogsApi.md#aggregate_logs) | **POST** /api/v2/logs/analytics/aggregate | Aggregate events |
| [**list_logs**](LogsApi.md#list_logs) | **POST** /api/v2/logs/events/search | Get a list of logs |
| [**list_logs_get**](LogsApi.md#list_logs_get) | **GET** /api/v2/logs/events | Get a quick list of logs |


## aggregate_logs

> <LogsAggregateResponse> aggregate_logs(body)

Aggregate events

The API endpoint to aggregate events into buckets and compute metrics and timeseries.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsApi.new
body = DatadogAPIClient::V2::LogsAggregateRequest.new # LogsAggregateRequest | 

begin
  # Aggregate events
  result = api_instance.aggregate_logs(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling LogsApi->aggregate_logs: #{e}"
end
```

#### Using the aggregate_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsAggregateResponse>, Integer, Hash)> aggregate_logs_with_http_info(body)

```ruby
begin
  # Aggregate events
  data, status_code, headers = api_instance.aggregate_logs_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsAggregateResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling LogsApi->aggregate_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsAggregateRequest**](LogsAggregateRequest.md) |  |  |

### Return type

[**LogsAggregateResponse**](LogsAggregateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_logs

> <LogsListResponse> list_logs(opts)

Get a list of logs

List endpoint returns logs that match a log search query. [Results are paginated][1].  Both this endpoint and the GET endpoint can be used interchangeably when listing logs.  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsApi.new
opts = {
  body: DatadogAPIClient::V2::LogsListRequest.new # LogsListRequest | 
}

begin
  # Get a list of logs
  result = api_instance.list_logs(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling LogsApi->list_logs: #{e}"
end
```

#### Using the list_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsListResponse>, Integer, Hash)> list_logs_with_http_info(opts)

```ruby
begin
  # Get a list of logs
  data, status_code, headers = api_instance.list_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsListResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling LogsApi->list_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsListRequest**](LogsListRequest.md) |  | [optional] |

### Return type

[**LogsListResponse**](LogsListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_logs_get

> <LogsListResponse> list_logs_get(opts)

Get a quick list of logs

List endpoint returns logs that match a log search query. [Results are paginated][1].  Both this endpoint and the POST endpoint can be used interchangeably when listing logs.  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsApi.new
opts = {
  filter_query: '@datacenter:us @role:db', # String | Search query following logs syntax.
  filter_index: 'main', # String | For customers with multiple indexes, the indexes to search Defaults to '*' which means all indexes
  filter_from: Time.parse('2019-01-02T09:42:36.320Z'), # Time | Minimum timestamp for requested logs.
  filter_to: Time.parse('2019-01-03T09:42:36.320Z'), # Time | Maximum timestamp for requested logs.
  sort: DatadogAPIClient::V2::LogsSort::TIMESTAMP_ASCENDING, # LogsSort | Order of logs in results.
  page_cursor: 'eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==', # String | List following results with a cursor provided in the previous query.
  page_limit: 25 # Integer | Maximum number of logs in the response.
}

begin
  # Get a quick list of logs
  result = api_instance.list_logs_get(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling LogsApi->list_logs_get: #{e}"
end
```

#### Using the list_logs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsListResponse>, Integer, Hash)> list_logs_get_with_http_info(opts)

```ruby
begin
  # Get a quick list of logs
  data, status_code, headers = api_instance.list_logs_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsListResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling LogsApi->list_logs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_query** | **String** | Search query following logs syntax. | [optional] |
| **filter_index** | **String** | For customers with multiple indexes, the indexes to search Defaults to &#39;*&#39; which means all indexes | [optional] |
| **filter_from** | **Time** | Minimum timestamp for requested logs. | [optional] |
| **filter_to** | **Time** | Maximum timestamp for requested logs. | [optional] |
| **sort** | **LogsSort** | Order of logs in results. | [optional] |
| **page_cursor** | **String** | List following results with a cursor provided in the previous query. | [optional] |
| **page_limit** | **Integer** | Maximum number of logs in the response. | [optional][default to 10] |

### Return type

[**LogsListResponse**](LogsListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


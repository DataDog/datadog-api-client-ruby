# DatadogAPIClient::V2::LogsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                          | HTTP request                              | Description        |
| ----------------------------------------------- | ----------------------------------------- | ------------------ |
| [**aggregate_logs**](LogsAPI.md#aggregate_logs) | **POST** /api/v2/logs/analytics/aggregate | Aggregate events   |
| [**list_logs**](LogsAPI.md#list_logs)           | **POST** /api/v2/logs/events/search       | Search logs        |
| [**list_logs_get**](LogsAPI.md#list_logs_get)   | **GET** /api/v2/logs/events               | Get a list of logs |
| [**submit_log**](LogsAPI.md#submit_log)         | **POST** /api/v2/logs                     | Send logs          |

## aggregate_logs

> <LogsAggregateResponse> aggregate_logs(body)

The API endpoint to aggregate events into buckets and compute metrics and timeseries.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsAPI.new
body = DatadogAPIClient::V2::LogsAggregateRequest.new # LogsAggregateRequest |

begin
  # Aggregate events
  result = api_instance.aggregate_logs(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->aggregate_logs: #{e}"
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->aggregate_logs_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                | Description | Notes |
| -------- | --------------------------------------------------- | ----------- | ----- |
| **body** | [**LogsAggregateRequest**](LogsAggregateRequest.md) |             |       |

### Return type

[**LogsAggregateResponse**](LogsAggregateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## list_logs

> <LogsListResponse> list_logs(opts)

List endpoint returns logs that match a log search query.
[Results are paginated][1].

Use this endpoint to build complex logs filtering and search.

**If you are considering archiving logs for your organization,
consider use of the Datadog archive capabilities instead of the log list API.
See [Datadog Logs Archive documentation][2].**

[1]: /logs/guide/collect-multiple-logs-with-pagination
[2]: https://docs.datadoghq.com/logs/archives

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsAPI.new
opts = {
  body: DatadogAPIClient::V2::LogsListRequest.new # LogsListRequest |
}

begin
  # Search logs
  result = api_instance.list_logs(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->list_logs: #{e}"
end
```

#### Using the list_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsListResponse>, Integer, Hash)> list_logs_with_http_info(opts)

```ruby
begin
  # Search logs
  data, status_code, headers = api_instance.list_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsListResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->list_logs_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                      | Description | Notes      |
| -------- | ----------------------------------------- | ----------- | ---------- |
| **body** | [**LogsListRequest**](LogsListRequest.md) |             | [optional] |

### Return type

[**LogsListResponse**](LogsListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## list_logs_get

> <LogsListResponse> list_logs_get(opts)

List endpoint returns logs that match a log search query.
[Results are paginated][1].

Use this endpoint to see your latest logs.

**If you are considering archiving logs for your organization,
consider use of the Datadog archive capabilities instead of the log list API.
See [Datadog Logs Archive documentation][2].**

[1]: /logs/guide/collect-multiple-logs-with-pagination
[2]: https://docs.datadoghq.com/logs/archives

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsAPI.new
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
  # Get a list of logs
  result = api_instance.list_logs_get(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->list_logs_get: #{e}"
end
```

#### Using the list_logs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsListResponse>, Integer, Hash)> list_logs_get_with_http_info(opts)

```ruby
begin
  # Get a list of logs
  data, status_code, headers = api_instance.list_logs_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsListResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->list_logs_get_with_http_info: #{e}"
end
```

### Parameters

| Name             | Type         | Description                                                                                                 | Notes                     |
| ---------------- | ------------ | ----------------------------------------------------------------------------------------------------------- | ------------------------- |
| **filter_query** | **String**   | Search query following logs syntax.                                                                         | [optional]                |
| **filter_index** | **String**   | For customers with multiple indexes, the indexes to search Defaults to &#39;\*&#39; which means all indexes | [optional]                |
| **filter_from**  | **Time**     | Minimum timestamp for requested logs.                                                                       | [optional]                |
| **filter_to**    | **Time**     | Maximum timestamp for requested logs.                                                                       | [optional]                |
| **sort**         | **LogsSort** | Order of logs in results.                                                                                   | [optional]                |
| **page_cursor**  | **String**   | List following results with a cursor provided in the previous query.                                        | [optional]                |
| **page_limit**   | **Integer**  | Maximum number of logs in the response.                                                                     | [optional][default to 10] |

### Return type

[**LogsListResponse**](LogsListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## submit_log

> Object submit_log(body, opts)

Send your logs to your Datadog platform over HTTP. Limits per HTTP request are:

- Maximum content size per payload (uncompressed): 5MB
- Maximum size for a single log: 1MB
- Maximum array size if sending multiple logs in an array: 1000 entries

Any log exceeding 1MB is accepted and truncated by Datadog:

- For a single log request, the API truncates the log at 1MB and returns a 2xx.
- For a multi-logs request, the API processes all logs, truncates only logs larger than 1MB, and returns a 2xx.

Datadog recommends sending your logs compressed.
Add the `Content-Encoding: gzip` header to the request when sending compressed logs.

The status codes answered by the HTTP API are:

- 202: Accepted: the request has been accepted for processing
- 400: Bad request (likely an issue in the payload formatting)
- 401: Unauthorized (likely a missing API Key)
- 403: Permission issue (likely using an invalid API Key)
- 408: Request Timeout, request should be retried after some time
- 413: Payload too large (batch is above 5MB uncompressed)
- 429: Too Many Requests, request should be retried after some time
- 500: Internal Server Error, the server encountered an unexpected condition that prevented it from fulfilling the request, request should be retried after some time
- 503: Service Unavailable, the server is not ready to handle the request probably because it is overloaded, request should be retried after some time

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsAPI.new
body = [DatadogAPIClient::V2::HTTPLogItem.new] # Array<HTTPLogItem> | Log to send (JSON format).
opts = {
  content_encoding: DatadogAPIClient::V2::ContentEncoding::GZIP, # ContentEncoding | HTTP header used to compress the media-type.
  ddtags: 'env:prod,user:my-user' # String | Log tags can be passed as query parameters with `text/plain` content type.
}

begin
  # Send logs
  result = api_instance.submit_log(body, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->submit_log: #{e}"
end
```

#### Using the submit_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> submit_log_with_http_info(body, opts)

```ruby
begin
  # Send logs
  data, status_code, headers = api_instance.submit_log_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->submit_log_with_http_info: #{e}"
end
```

### Parameters

| Name                 | Type                                           | Description                                                                          | Notes      |
| -------------------- | ---------------------------------------------- | ------------------------------------------------------------------------------------ | ---------- |
| **body**             | [**Array&lt;HTTPLogItem&gt;**](HTTPLogItem.md) | Log to send (JSON format).                                                           |            |
| **content_encoding** | **ContentEncoding**                            | HTTP header used to compress the media-type.                                         | [optional] |
| **ddtags**           | **String**                                     | Log tags can be passed as query parameters with &#x60;text/plain&#x60; content type. | [optional] |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json, application/logplex-1, text/plain
- **Accept**: application/json

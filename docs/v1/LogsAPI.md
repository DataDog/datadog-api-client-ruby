# DatadogAPIClient::V1::LogsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_logs**](LogsAPI.md#list_logs) | **POST** /api/v1/logs-queries/list | Search logs |
| [**submit_log**](LogsAPI.md#submit_log) | **POST** /v1/input | Send logs |


## list_logs

> <LogsListResponse> list_logs(body)

List endpoint returns logs that match a log search query.
[Results are paginated][1].

**If you are considering archiving logs for your organization,
consider use of the Datadog archive capabilities instead of the log list API.
See [Datadog Logs Archive documentation][2].**

[1]: /logs/guide/collect-multiple-logs-with-pagination
[2]: https://docs.datadoghq.com/logs/archives

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsAPI.new
body = DatadogAPIClient::V1::LogsListRequest.new({time: DatadogAPIClient::V1::LogsListRequestTime.new({from: Time.parse('2020-02-02T02:02:02Z'), to: Time.parse('2020-02-02T20:20:20Z')})}) # LogsListRequest | Logs filter

begin
  # Search logs
  result = api_instance.list_logs(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsAPI->list_logs: #{e}"
end
```

#### Using the list_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsListResponse>, Integer, Hash)> list_logs_with_http_info(body)

```ruby
begin
  # Search logs
  data, status_code, headers = api_instance.list_logs_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsAPI->list_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsListRequest**](LogsListRequest.md) | Logs filter |  |

### Return type

[**LogsListResponse**](LogsListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
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
- 200: OK
- 400: Bad request (likely an issue in the payload formatting)
- 403: Permission issue (likely using an invalid API Key)
- 413: Payload too large (batch is above 5MB uncompressed)
- 5xx: Internal error, request should be retried after some time

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsAPI.new
body = [DatadogAPIClient::V1::HTTPLogItem.new] # Array<HTTPLogItem> | Log to send (JSON format).
opts = {
  content_encoding: DatadogAPIClient::V1::ContentEncoding::GZIP, # ContentEncoding | HTTP header used to compress the media-type.
  ddtags: 'env:prod,user:my-user' # String | Log tags can be passed as query parameters with `text/plain` content type.
}

begin
  # Send logs
  result = api_instance.submit_log(body, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsAPI->submit_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;HTTPLogItem&gt;**](HTTPLogItem.md) | Log to send (JSON format). |  |
| **content_encoding** | **ContentEncoding** | HTTP header used to compress the media-type. | [optional] |
| **ddtags** | **String** | Log tags can be passed as query parameters with &#x60;text/plain&#x60; content type. | [optional] |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json, application/logplex-1, text/plain
- **Accept**: application/json


# DatadogAPIClient::V1::LogsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_logs**](LogsApi.md#list_logs) | **POST** /api/v1/logs-queries/list | Search logs |


## list_logs

> <LogsListResponse> list_logs(body)

Search logs

List endpoint returns logs that match a log search query. [Results are paginated][1].  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::LogsApi.new
body = DatadogAPIClient::V1::LogsListRequest.new({time: DatadogAPIClient::V1::LogsListRequestTime.new({from: Time.parse('2020-02-02T02:02:02Z'), to: Time.parse('2020-02-02T20:20:20Z')})}) # LogsListRequest | Logs filter

begin
  # Search logs
  result = api_instance.list_logs(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling LogsApi->list_logs: #{e}"
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
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling LogsApi->list_logs_with_http_info: #{e}"
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


# DatadogAPIClient::V1::ServiceChecksAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**submit_service_check**](ServiceChecksAPI.md#submit_service_check) | **POST** /api/v1/check_run | Submit a Service Check |


## submit_service_check

> <IntakePayloadAccepted> submit_service_check(body)

Submit a list of Service Checks.

**Note**: A valid API key is required.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceChecksAPI.new
body = [DatadogAPIClient::V1::ServiceCheck.new({check: 'app.ok', host_name: 'app.host1', status: DatadogAPIClient::V1::ServiceCheckStatus::OK, tags: ['tags_example']})] # Array<ServiceCheck> | Service Check request body.

begin
  # Submit a Service Check
  result = api_instance.submit_service_check(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceChecksAPI->submit_service_check: #{e}"
end
```

#### Using the submit_service_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntakePayloadAccepted>, Integer, Hash)> submit_service_check_with_http_info(body)

```ruby
begin
  # Submit a Service Check
  data, status_code, headers = api_instance.submit_service_check_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntakePayloadAccepted>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceChecksAPI->submit_service_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;ServiceCheck&gt;**](ServiceCheck.md) | Service Check request body. |  |

### Return type

[**IntakePayloadAccepted**](IntakePayloadAccepted.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


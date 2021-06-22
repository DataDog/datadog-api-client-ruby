# DatadogAPIClient::V1::AuthenticationAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**validate**](AuthenticationAPI.md#validate) | **GET** /api/v1/validate | Validate API key |


## validate

> <AuthenticationValidationResponse> validate

Check if the API key (not the APP key) is valid. If invalid, a 403 is returned.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AuthenticationAPI.new

begin
  # Validate API key
  result = api_instance.validate
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AuthenticationAPI->validate: #{e}"
end
```

#### Using the validate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationValidationResponse>, Integer, Hash)> validate_with_http_info

```ruby
begin
  # Validate API key
  data, status_code, headers = api_instance.validate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationValidationResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AuthenticationAPI->validate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthenticationValidationResponse**](AuthenticationValidationResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


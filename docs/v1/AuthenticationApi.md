# DatadogAPIClient::V1::AuthenticationApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](AuthenticationApi.md#validate) | **GET** /api/v1/validate | Validate API key



## validate

> AuthenticationValidationResponse validate

Validate API key

Check if the API key (not the APP key) is valid. If invalid, a 403 is returned.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['DD-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-API-KEY'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AuthenticationApi.new

begin
  #Validate API key
  result = api_instance.validate
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AuthenticationApi->validate: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthenticationValidationResponse**](AuthenticationValidationResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


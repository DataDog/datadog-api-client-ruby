# DatadogAPIClient::V2::ServicesApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_service**](ServicesApi.md#create_service) | **POST** /api/v2/services | Create a new service
[**delete_service**](ServicesApi.md#delete_service) | **DELETE** /api/v2/services/{service_id} | Delete an existing service
[**get_service**](ServicesApi.md#get_service) | **GET** /api/v2/services/{service_id} | Get details of a service
[**get_services**](ServicesApi.md#get_services) | **GET** /api/v2/services | Get a list of all services
[**update_service**](ServicesApi.md#update_service) | **PATCH** /api/v2/services/{service_id} | Update an existing service



## create_service

> ServiceResponse create_service(body)

Create a new service

Creates a new service.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::ServicesApi.new
body = DatadogAPIClient::V2::ServiceCreateRequest.new # ServiceCreateRequest | Service Payload.

begin
  #Create a new service
  result = api_instance.create_service(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling ServicesApi->create_service: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ServiceCreateRequest**](ServiceCreateRequest.md)| Service Payload. | 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_service

> delete_service(service_id)

Delete an existing service

Deletes an existing service.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::ServicesApi.new
service_id = 'service_id_example' # String | The ID of the service.

begin
  #Delete an existing service
  api_instance.delete_service(service_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling ServicesApi->delete_service: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| The ID of the service. | 

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service

> ServiceResponse get_service(service_id, opts)

Get details of a service

Get details of a service. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these services

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::ServicesApi.new
service_id = 'service_id_example' # String | The ID of the service.
opts = {
  include: 'include_example' # String | Specifies which types of related objects should be included in the response.
}

begin
  #Get details of a service
  result = api_instance.get_service(service_id, opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling ServicesApi->get_service: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| The ID of the service. | 
 **include** | **String**| Specifies which types of related objects should be included in the response. | [optional] 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_services

> ServicesResponse get_services(opts)

Get a list of all services

Get all services for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these services.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::ServicesApi.new
opts = {
  include: 'include_example', # String | Specifies which types of related objects should be included in the response.
  page_size: 10, # Integer | Size for a given page.
  page_offset: 0 # Integer | Specific offset to use as the beginning of the returned page.
}

begin
  #Get a list of all services
  result = api_instance.get_services(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling ServicesApi->get_services: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Specifies which types of related objects should be included in the response. | [optional] 
 **page_size** | **Integer**| Size for a given page. | [optional] [default to 10]
 **page_offset** | **Integer**| Specific offset to use as the beginning of the returned page. | [optional] [default to 0]

### Return type

[**ServicesResponse**](ServicesResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_service

> ServiceResponse update_service(service_id, body)

Update an existing service

Updates an existing service. Only provide the attributes which should be updated as this request is a partial update.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::ServicesApi.new
service_id = 'service_id_example' # String | The ID of the service.
body = DatadogAPIClient::V2::ServiceUpdateRequest.new # ServiceUpdateRequest | Service Payload.

begin
  #Update an existing service
  result = api_instance.update_service(service_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling ServicesApi->update_service: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| The ID of the service. | 
 **body** | [**ServiceUpdateRequest**](ServiceUpdateRequest.md)| Service Payload. | 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# DatadogAPIClient::V2::IncidentServicesApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_incident_service**](IncidentServicesApi.md#create_incident_service) | **POST** /api/v2/services | Create a new incident service |
| [**delete_incident_service**](IncidentServicesApi.md#delete_incident_service) | **DELETE** /api/v2/services/{service_id} | Delete an existing incident service |
| [**get_incident_service**](IncidentServicesApi.md#get_incident_service) | **GET** /api/v2/services/{service_id} | Get details of an incident service |
| [**list_incident_services**](IncidentServicesApi.md#list_incident_services) | **GET** /api/v2/services | Get a list of all incident services |
| [**update_incident_service**](IncidentServicesApi.md#update_incident_service) | **PATCH** /api/v2/services/{service_id} | Update an existing incident service |


## create_incident_service

> <IncidentServiceResponse> create_incident_service(body)

Create a new incident service

Creates a new incident service.

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

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
body = DatadogAPIClient::V2::IncidentServiceCreateRequest.new({data: DatadogAPIClient::V2::IncidentServiceCreateData.new({type: DatadogAPIClient::V2::IncidentServiceType::SERVICES})}) # IncidentServiceCreateRequest | Incident Service Payload.

begin
  # Create a new incident service
  result = api_instance.create_incident_service(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->create_incident_service: #{e}"
end
```

#### Using the create_incident_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentServiceResponse>, Integer, Hash)> create_incident_service_with_http_info(body)

```ruby
begin
  # Create a new incident service
  data, status_code, headers = api_instance.create_incident_service_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentServiceResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->create_incident_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**IncidentServiceCreateRequest**](IncidentServiceCreateRequest.md) | Incident Service Payload. |  |

### Return type

[**IncidentServiceResponse**](IncidentServiceResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_incident_service

> delete_incident_service(service_id)

Delete an existing incident service

Deletes an existing incident service.

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

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
service_id = 'service_id_example' # String | The ID of the incident service.

begin
  # Delete an existing incident service
  api_instance.delete_incident_service(service_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->delete_incident_service: #{e}"
end
```

#### Using the delete_incident_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_incident_service_with_http_info(service_id)

```ruby
begin
  # Delete an existing incident service
  data, status_code, headers = api_instance.delete_incident_service_with_http_info(service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->delete_incident_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The ID of the incident service. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_service

> <IncidentServiceResponse> get_incident_service(service_id, opts)

Get details of an incident service

Get details of an incident service. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident services.

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

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
service_id = 'service_id_example' # String | The ID of the incident service.
opts = {
  include: 'users' # String | Specifies which types of related objects should be included in the response.
}

begin
  # Get details of an incident service
  result = api_instance.get_incident_service(service_id, opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->get_incident_service: #{e}"
end
```

#### Using the get_incident_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentServiceResponse>, Integer, Hash)> get_incident_service_with_http_info(service_id, opts)

```ruby
begin
  # Get details of an incident service
  data, status_code, headers = api_instance.get_incident_service_with_http_info(service_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentServiceResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->get_incident_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The ID of the incident service. |  |
| **include** | **String** | Specifies which types of related objects should be included in the response. | [optional] |

### Return type

[**IncidentServiceResponse**](IncidentServiceResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_services

> <IncidentServicesResponse> list_incident_services(opts)

Get a list of all incident services

Get all incident services uploaded for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident services.

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

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
opts = {
  include: 'users', # String | Specifies which types of related objects should be included in the response.
  page_size: 789, # Integer | Size for a given page.
  page_offset: 789, # Integer | Specific offset to use as the beginning of the returned page.
  filter: 'ExampleServiceName' # String | A search query that filters services by name.
}

begin
  # Get a list of all incident services
  result = api_instance.list_incident_services(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->list_incident_services: #{e}"
end
```

#### Using the list_incident_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentServicesResponse>, Integer, Hash)> list_incident_services_with_http_info(opts)

```ruby
begin
  # Get a list of all incident services
  data, status_code, headers = api_instance.list_incident_services_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentServicesResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->list_incident_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Specifies which types of related objects should be included in the response. | [optional] |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_offset** | **Integer** | Specific offset to use as the beginning of the returned page. | [optional][default to 0] |
| **filter** | **String** | A search query that filters services by name. | [optional] |

### Return type

[**IncidentServicesResponse**](IncidentServicesResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_incident_service

> <IncidentServiceResponse> update_incident_service(service_id, body)

Update an existing incident service

Updates an existing incident service. Only provide the attributes which should be updated as this request is a partial update.

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

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
service_id = 'service_id_example' # String | The ID of the incident service.
body = DatadogAPIClient::V2::IncidentServiceUpdateRequest.new({data: DatadogAPIClient::V2::IncidentServiceUpdateData.new({id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::IncidentServiceType::SERVICES})}) # IncidentServiceUpdateRequest | Incident Service Payload.

begin
  # Update an existing incident service
  result = api_instance.update_incident_service(service_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->update_incident_service: #{e}"
end
```

#### Using the update_incident_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentServiceResponse>, Integer, Hash)> update_incident_service_with_http_info(service_id, body)

```ruby
begin
  # Update an existing incident service
  data, status_code, headers = api_instance.update_incident_service_with_http_info(service_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentServiceResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling IncidentServicesApi->update_incident_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The ID of the incident service. |  |
| **body** | [**IncidentServiceUpdateRequest**](IncidentServiceUpdateRequest.md) | Incident Service Payload. |  |

### Return type

[**IncidentServiceResponse**](IncidentServiceResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


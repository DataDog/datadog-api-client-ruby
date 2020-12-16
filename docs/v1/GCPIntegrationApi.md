# DatadogAPIClient::V1::GCPIntegrationApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_gcp_integration**](GCPIntegrationApi.md#create_gcp_integration) | **POST** /api/v1/integration/gcp | Create a GCP integration |
| [**delete_gcp_integration**](GCPIntegrationApi.md#delete_gcp_integration) | **DELETE** /api/v1/integration/gcp | Delete a GCP integration |
| [**list_gcp_integration**](GCPIntegrationApi.md#list_gcp_integration) | **GET** /api/v1/integration/gcp | List all GCP integrations |
| [**update_gcp_integration**](GCPIntegrationApi.md#update_gcp_integration) | **PUT** /api/v1/integration/gcp | Update a GCP integration |


## create_gcp_integration

> Object create_gcp_integration(body)

Create a GCP integration

Create a Datadog-GCP integration.

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

api_instance = DatadogAPIClient::V1::GCPIntegrationApi.new
body = DatadogAPIClient::V1::GCPAccount.new # GCPAccount | Create a Datadog-GCP integration.

begin
  # Create a GCP integration
  result = api_instance.create_gcp_integration(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling GCPIntegrationApi->create_gcp_integration: #{e}"
end
```

#### Using the create_gcp_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_gcp_integration_with_http_info(body)

```ruby
begin
  # Create a GCP integration
  data, status_code, headers = api_instance.create_gcp_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling GCPIntegrationApi->create_gcp_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**GCPAccount**](GCPAccount.md) | Create a Datadog-GCP integration. |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_gcp_integration

> Object delete_gcp_integration(body)

Delete a GCP integration

Delete a given Datadog-GCP integration.

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

api_instance = DatadogAPIClient::V1::GCPIntegrationApi.new
body = DatadogAPIClient::V1::GCPAccount.new # GCPAccount | Delete a given Datadog-GCP integration.

begin
  # Delete a GCP integration
  result = api_instance.delete_gcp_integration(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling GCPIntegrationApi->delete_gcp_integration: #{e}"
end
```

#### Using the delete_gcp_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_gcp_integration_with_http_info(body)

```ruby
begin
  # Delete a GCP integration
  data, status_code, headers = api_instance.delete_gcp_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling GCPIntegrationApi->delete_gcp_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**GCPAccount**](GCPAccount.md) | Delete a given Datadog-GCP integration. |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_gcp_integration

> <Array<GCPAccount>> list_gcp_integration

List all GCP integrations

List all Datadog-GCP integrations configured in your Datadog account.

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

api_instance = DatadogAPIClient::V1::GCPIntegrationApi.new

begin
  # List all GCP integrations
  result = api_instance.list_gcp_integration
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling GCPIntegrationApi->list_gcp_integration: #{e}"
end
```

#### Using the list_gcp_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GCPAccount>>, Integer, Hash)> list_gcp_integration_with_http_info

```ruby
begin
  # List all GCP integrations
  data, status_code, headers = api_instance.list_gcp_integration_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GCPAccount>>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling GCPIntegrationApi->list_gcp_integration_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;GCPAccount&gt;**](GCPAccount.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_gcp_integration

> Object update_gcp_integration(body)

Update a GCP integration

Update a Datadog-GCP integrations host_filters and/or auto-mute. Requires a `project_id` and `client_email`, however these fields cannot be updated. If you need to update these fields, delete and use the create (`POST`) endpoint. The unspecified fields will keep their original values.

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

api_instance = DatadogAPIClient::V1::GCPIntegrationApi.new
body = DatadogAPIClient::V1::GCPAccount.new # GCPAccount | Update a Datadog-GCP integration.

begin
  # Update a GCP integration
  result = api_instance.update_gcp_integration(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling GCPIntegrationApi->update_gcp_integration: #{e}"
end
```

#### Using the update_gcp_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_gcp_integration_with_http_info(body)

```ruby
begin
  # Update a GCP integration
  data, status_code, headers = api_instance.update_gcp_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling GCPIntegrationApi->update_gcp_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**GCPAccount**](GCPAccount.md) | Update a Datadog-GCP integration. |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


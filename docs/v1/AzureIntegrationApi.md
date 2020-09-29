# DatadogAPIClient::V1::AzureIntegrationApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_azure_integration**](AzureIntegrationApi.md#create_azure_integration) | **POST** /api/v1/integration/azure | Create an Azure integration
[**delete_azure_integration**](AzureIntegrationApi.md#delete_azure_integration) | **DELETE** /api/v1/integration/azure | Delete an Azure integration
[**list_azure_integration**](AzureIntegrationApi.md#list_azure_integration) | **GET** /api/v1/integration/azure | List all Azure integrations
[**update_azure_host_filters**](AzureIntegrationApi.md#update_azure_host_filters) | **POST** /api/v1/integration/azure/host_filters | Update Azure integration host filters
[**update_azure_integration**](AzureIntegrationApi.md#update_azure_integration) | **PUT** /api/v1/integration/azure | Update an Azure integration



## create_azure_integration

> Object create_azure_integration(body)

Create an Azure integration

Create a Datadog-Azure integration.  Using the `POST` method updates your integration configuration by adding your new configuration to the existing one in your Datadog organization.  Using the `PUT` method updates your integration configuration by replacing your current configuration with the new one sent to your Datadog organization.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AzureIntegrationApi.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Create a Datadog-Azure integration for your Datadog account request body.

begin
  #Create an Azure integration
  result = api_instance.create_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AzureIntegrationApi->create_azure_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AzureAccount**](AzureAccount.md)| Create a Datadog-Azure integration for your Datadog account request body. | 

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_azure_integration

> Object delete_azure_integration(body)

Delete an Azure integration

Delete a given Datadog-Azure integration from your Datadog account.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AzureIntegrationApi.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Delete a given Datadog-Azure integration request body.

begin
  #Delete an Azure integration
  result = api_instance.delete_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AzureIntegrationApi->delete_azure_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AzureAccount**](AzureAccount.md)| Delete a given Datadog-Azure integration request body. | 

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_azure_integration

> Array&lt;AzureAccount&gt; list_azure_integration

List all Azure integrations

List all Datadog-Azure integrations configured in your Datadog account.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AzureIntegrationApi.new

begin
  #List all Azure integrations
  result = api_instance.list_azure_integration
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AzureIntegrationApi->list_azure_integration: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AzureAccount&gt;**](AzureAccount.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_azure_host_filters

> Object update_azure_host_filters(body)

Update Azure integration host filters

Update the defined list of host filters for a given Datadog-Azure integration.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AzureIntegrationApi.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Update a Datadog-Azure integration's host filters request body.

begin
  #Update Azure integration host filters
  result = api_instance.update_azure_host_filters(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AzureIntegrationApi->update_azure_host_filters: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AzureAccount**](AzureAccount.md)| Update a Datadog-Azure integration&#39;s host filters request body. | 

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_azure_integration

> Object update_azure_integration(body)

Update an Azure integration

Update a Datadog-Azure integration. Requires an existing `tenant_name` and `client_id`. Any other fields supplied will overwrite existing values. To overwrite `tenant_name` or `client_id`, use `new_tenant_name` and `new_client_id`. To leave a field unchanged, do not supply that field in the payload.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AzureIntegrationApi.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Update a Datadog-Azure integration request body.

begin
  #Update an Azure integration
  result = api_instance.update_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AzureIntegrationApi->update_azure_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AzureAccount**](AzureAccount.md)| Update a Datadog-Azure integration request body. | 

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


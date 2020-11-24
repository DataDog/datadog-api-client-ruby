# DatadogAPIClient::V1::KeyManagementApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](KeyManagementApi.md#create_api_key) | **POST** /api/v1/api_key | Create an API key |
| [**create_application_key**](KeyManagementApi.md#create_application_key) | **POST** /api/v1/application_key | Create an application key |
| [**delete_api_key**](KeyManagementApi.md#delete_api_key) | **DELETE** /api/v1/api_key/{key} | Delete an API key |
| [**delete_application_key**](KeyManagementApi.md#delete_application_key) | **DELETE** /api/v1/application_key/{key} | Delete an application key |
| [**get_api_key**](KeyManagementApi.md#get_api_key) | **GET** /api/v1/api_key/{key} | Get API key |
| [**get_application_key**](KeyManagementApi.md#get_application_key) | **GET** /api/v1/application_key/{key} | Get an application key |
| [**list_api_keys**](KeyManagementApi.md#list_api_keys) | **GET** /api/v1/api_key | Get all API keys |
| [**list_application_keys**](KeyManagementApi.md#list_application_keys) | **GET** /api/v1/application_key | Get all application keys |
| [**update_api_key**](KeyManagementApi.md#update_api_key) | **PUT** /api/v1/api_key/{key} | Edit an API key |
| [**update_application_key**](KeyManagementApi.md#update_application_key) | **PUT** /api/v1/application_key/{key} | Edit an application key |


## create_api_key

> ApiKeyResponse create_api_key(body)

Create an API key

Creates an API key with a given name.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
body = DatadogAPIClient::V1::ApiKey.new # ApiKey | 

begin
  #Create an API key
  result = api_instance.create_api_key(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->create_api_key: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiKey**](ApiKey.md) |  |  |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_application_key

> ApplicationKeyResponse create_application_key(body)

Create an application key

Create an application key with a given name.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
body = DatadogAPIClient::V1::ApplicationKey.new # ApplicationKey | 

begin
  #Create an application key
  result = api_instance.create_application_key(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->create_application_key: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApplicationKey**](ApplicationKey.md) |  |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> ApiKeyResponse delete_api_key(key)

Delete an API key

Delete a given API key.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific API key you are working with.

begin
  #Delete an API key
  result = api_instance.delete_api_key(key)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->delete_api_key: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific API key you are working with. |  |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_application_key

> ApplicationKeyResponse delete_application_key(key)

Delete an application key

Delete a given application key.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific APP key you are working with.

begin
  #Delete an application key
  result = api_instance.delete_application_key(key)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->delete_application_key: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific APP key you are working with. |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_key

> ApiKeyResponse get_api_key(key)

Get API key

Get a given API key.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific API key you are working with.

begin
  #Get API key
  result = api_instance.get_api_key(key)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->get_api_key: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific API key you are working with. |  |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_application_key

> ApplicationKeyResponse get_application_key(key)

Get an application key

Get a given application key.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific APP key you are working with.

begin
  #Get an application key
  result = api_instance.get_application_key(key)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->get_application_key: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific APP key you are working with. |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_api_keys

> ApiKeyListResponse list_api_keys

Get all API keys

Get all API keys available for your account.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new

begin
  #Get all API keys
  result = api_instance.list_api_keys
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->list_api_keys: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiKeyListResponse**](ApiKeyListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_application_keys

> ApplicationKeyListResponse list_application_keys

Get all application keys

Get all application keys available for your Datadog account.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new

begin
  #Get all application keys
  result = api_instance.list_application_keys
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->list_application_keys: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApplicationKeyListResponse**](ApplicationKeyListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_api_key

> ApiKeyResponse update_api_key(key, body)

Edit an API key

Edit an API key name.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific API key you are working with.
body = DatadogAPIClient::V1::ApiKey.new # ApiKey | 

begin
  #Edit an API key
  result = api_instance.update_api_key(key, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->update_api_key: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific API key you are working with. |  |
| **body** | [**ApiKey**](ApiKey.md) |  |  |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_application_key

> ApplicationKeyResponse update_application_key(key, body)

Edit an application key

Edit an application key name.

### Example

```ruby
# load the gem
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

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific APP key you are working with.
body = DatadogAPIClient::V1::ApplicationKey.new # ApplicationKey | 

begin
  #Edit an application key
  result = api_instance.update_application_key(key, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling KeyManagementApi->update_application_key: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific APP key you are working with. |  |
| **body** | [**ApplicationKey**](ApplicationKey.md) |  |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


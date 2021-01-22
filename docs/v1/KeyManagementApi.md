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

> <ApiKeyResponse> create_api_key(body)

Create an API key

Creates an API key with a given name.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
body = DatadogAPIClient::V1::ApiKey.new # ApiKey | 

begin
  # Create an API key
  result = api_instance.create_api_key(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->create_api_key: #{e}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponse>, Integer, Hash)> create_api_key_with_http_info(body)

```ruby
begin
  # Create an API key
  data, status_code, headers = api_instance.create_api_key_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->create_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiKey**](ApiKey.md) |  |  |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_application_key

> <ApplicationKeyResponse> create_application_key(body)

Create an application key

Create an application key with a given name.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
body = DatadogAPIClient::V1::ApplicationKey.new # ApplicationKey | 

begin
  # Create an application key
  result = api_instance.create_application_key(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->create_application_key: #{e}"
end
```

#### Using the create_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> create_application_key_with_http_info(body)

```ruby
begin
  # Create an application key
  data, status_code, headers = api_instance.create_application_key_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->create_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApplicationKey**](ApplicationKey.md) |  |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> <ApiKeyResponse> delete_api_key(key)

Delete an API key

Delete a given API key.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific API key you are working with.

begin
  # Delete an API key
  result = api_instance.delete_api_key(key)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->delete_api_key: #{e}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponse>, Integer, Hash)> delete_api_key_with_http_info(key)

```ruby
begin
  # Delete an API key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->delete_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific API key you are working with. |  |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_application_key

> <ApplicationKeyResponse> delete_application_key(key)

Delete an application key

Delete a given application key.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific APP key you are working with.

begin
  # Delete an application key
  result = api_instance.delete_application_key(key)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->delete_application_key: #{e}"
end
```

#### Using the delete_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> delete_application_key_with_http_info(key)

```ruby
begin
  # Delete an application key
  data, status_code, headers = api_instance.delete_application_key_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->delete_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific APP key you are working with. |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_key

> <ApiKeyResponse> get_api_key(key)

Get API key

Get a given API key.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific API key you are working with.

begin
  # Get API key
  result = api_instance.get_api_key(key)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->get_api_key: #{e}"
end
```

#### Using the get_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponse>, Integer, Hash)> get_api_key_with_http_info(key)

```ruby
begin
  # Get API key
  data, status_code, headers = api_instance.get_api_key_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->get_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific API key you are working with. |  |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_application_key

> <ApplicationKeyResponse> get_application_key(key)

Get an application key

Get a given application key.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific APP key you are working with.

begin
  # Get an application key
  result = api_instance.get_application_key(key)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->get_application_key: #{e}"
end
```

#### Using the get_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> get_application_key_with_http_info(key)

```ruby
begin
  # Get an application key
  data, status_code, headers = api_instance.get_application_key_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->get_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The specific APP key you are working with. |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_api_keys

> <ApiKeyListResponse> list_api_keys

Get all API keys

Get all API keys available for your account.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new

begin
  # Get all API keys
  result = api_instance.list_api_keys
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->list_api_keys: #{e}"
end
```

#### Using the list_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyListResponse>, Integer, Hash)> list_api_keys_with_http_info

```ruby
begin
  # Get all API keys
  data, status_code, headers = api_instance.list_api_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyListResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->list_api_keys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiKeyListResponse**](ApiKeyListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_application_keys

> <ApplicationKeyListResponse> list_application_keys

Get all application keys

Get all application keys available for your Datadog account.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new

begin
  # Get all application keys
  result = api_instance.list_application_keys
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->list_application_keys: #{e}"
end
```

#### Using the list_application_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyListResponse>, Integer, Hash)> list_application_keys_with_http_info

```ruby
begin
  # Get all application keys
  data, status_code, headers = api_instance.list_application_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyListResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->list_application_keys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApplicationKeyListResponse**](ApplicationKeyListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_api_key

> <ApiKeyResponse> update_api_key(key, body)

Edit an API key

Edit an API key name.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific API key you are working with.
body = DatadogAPIClient::V1::ApiKey.new # ApiKey | 

begin
  # Edit an API key
  result = api_instance.update_api_key(key, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->update_api_key: #{e}"
end
```

#### Using the update_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponse>, Integer, Hash)> update_api_key_with_http_info(key, body)

```ruby
begin
  # Edit an API key
  data, status_code, headers = api_instance.update_api_key_with_http_info(key, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->update_api_key_with_http_info: #{e}"
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

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_application_key

> <ApplicationKeyResponse> update_application_key(key, body)

Edit an application key

Edit an application key name.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::KeyManagementApi.new
key = 'key_example' # String | The specific APP key you are working with.
body = DatadogAPIClient::V1::ApplicationKey.new # ApplicationKey | 

begin
  # Edit an application key
  result = api_instance.update_application_key(key, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->update_application_key: #{e}"
end
```

#### Using the update_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> update_application_key_with_http_info(key, body)

```ruby
begin
  # Edit an application key
  data, status_code, headers = api_instance.update_application_key_with_http_info(key, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling KeyManagementApi->update_application_key_with_http_info: #{e}"
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

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


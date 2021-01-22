# DatadogAPIClient::V2::KeyManagementApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](KeyManagementApi.md#create_api_key) | **POST** /api/v2/api_keys | Create an API key |
| [**create_current_user_application_key**](KeyManagementApi.md#create_current_user_application_key) | **POST** /api/v2/current_user/application_keys | Create an application key for current user |
| [**delete_api_key**](KeyManagementApi.md#delete_api_key) | **DELETE** /api/v2/api_keys/{api_key_id} | Delete an API key |
| [**delete_application_key**](KeyManagementApi.md#delete_application_key) | **DELETE** /api/v2/application_keys/{app_key_id} | Delete an application key |
| [**delete_current_user_application_key**](KeyManagementApi.md#delete_current_user_application_key) | **DELETE** /api/v2/current_user/application_keys/{app_key_id} | Delete an application key owned by current user |
| [**get_api_key**](KeyManagementApi.md#get_api_key) | **GET** /api/v2/api_keys/{api_key_id} | Get API key |
| [**get_current_user_application_key**](KeyManagementApi.md#get_current_user_application_key) | **GET** /api/v2/current_user/application_keys/{app_key_id} | Get one application key owned by current user |
| [**list_api_keys**](KeyManagementApi.md#list_api_keys) | **GET** /api/v2/api_keys | Get all API keys |
| [**list_application_keys**](KeyManagementApi.md#list_application_keys) | **GET** /api/v2/application_keys | Get all application keys |
| [**list_current_user_application_keys**](KeyManagementApi.md#list_current_user_application_keys) | **GET** /api/v2/current_user/application_keys | Get all application keys owned by current user |
| [**update_api_key**](KeyManagementApi.md#update_api_key) | **PATCH** /api/v2/api_keys/{api_key_id} | Edit an API key |
| [**update_application_key**](KeyManagementApi.md#update_application_key) | **PATCH** /api/v2/application_keys/{app_key_id} | Edit an application key |
| [**update_current_user_application_key**](KeyManagementApi.md#update_current_user_application_key) | **PATCH** /api/v2/current_user/application_keys/{app_key_id} | Edit an application key owned by current user |


## create_api_key

> <APIKeyResponse> create_api_key(body)

Create an API key

Create an API key.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
body = DatadogAPIClient::V2::APIKeyCreateRequest.new({data: DatadogAPIClient::V2::APIKeyCreateData.new({attributes: DatadogAPIClient::V2::APIKeyCreateAttributes.new({name: 'API Key for submitting metrics'}), type: DatadogAPIClient::V2::APIKeysType::API_KEYS})}) # APIKeyCreateRequest | 

begin
  # Create an API key
  result = api_instance.create_api_key(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->create_api_key: #{e}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIKeyResponse>, Integer, Hash)> create_api_key_with_http_info(body)

```ruby
begin
  # Create an API key
  data, status_code, headers = api_instance.create_api_key_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIKeyResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->create_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**APIKeyCreateRequest**](APIKeyCreateRequest.md) |  |  |

### Return type

[**APIKeyResponse**](APIKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_current_user_application_key

> <ApplicationKeyResponse> create_current_user_application_key(body)

Create an application key for current user

Create an application key for current user

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
body = DatadogAPIClient::V2::ApplicationKeyCreateRequest.new({data: DatadogAPIClient::V2::ApplicationKeyCreateData.new({attributes: DatadogAPIClient::V2::ApplicationKeyCreateAttributes.new({name: 'Application Key for submitting metrics'}), type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS})}) # ApplicationKeyCreateRequest | 

begin
  # Create an application key for current user
  result = api_instance.create_current_user_application_key(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->create_current_user_application_key: #{e}"
end
```

#### Using the create_current_user_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> create_current_user_application_key_with_http_info(body)

```ruby
begin
  # Create an application key for current user
  data, status_code, headers = api_instance.create_current_user_application_key_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->create_current_user_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApplicationKeyCreateRequest**](ApplicationKeyCreateRequest.md) |  |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> delete_api_key(api_key_id)

Delete an API key

Delete an API key.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
api_key_id = 'api_key_id_example' # String | The ID of the API key.

begin
  # Delete an API key
  api_instance.delete_api_key(api_key_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->delete_api_key: #{e}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_api_key_with_http_info(api_key_id)

```ruby
begin
  # Delete an API key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->delete_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_id** | **String** | The ID of the API key. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_application_key

> delete_application_key(app_key_id)

Delete an application key

Delete an application key

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
app_key_id = 'app_key_id_example' # String | The ID of the application key.

begin
  # Delete an application key
  api_instance.delete_application_key(app_key_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->delete_application_key: #{e}"
end
```

#### Using the delete_application_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_application_key_with_http_info(app_key_id)

```ruby
begin
  # Delete an application key
  data, status_code, headers = api_instance.delete_application_key_with_http_info(app_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->delete_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key_id** | **String** | The ID of the application key. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_current_user_application_key

> delete_current_user_application_key(app_key_id)

Delete an application key owned by current user

Delete an application key owned by current user

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
app_key_id = 'app_key_id_example' # String | The ID of the application key.

begin
  # Delete an application key owned by current user
  api_instance.delete_current_user_application_key(app_key_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->delete_current_user_application_key: #{e}"
end
```

#### Using the delete_current_user_application_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_current_user_application_key_with_http_info(app_key_id)

```ruby
begin
  # Delete an application key owned by current user
  data, status_code, headers = api_instance.delete_current_user_application_key_with_http_info(app_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->delete_current_user_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key_id** | **String** | The ID of the application key. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_key

> <APIKeyResponse> get_api_key(api_key_id, opts)

Get API key

Get an API key.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
api_key_id = 'api_key_id_example' # String | The ID of the API key.
opts = {
  include: 'created_by,modified_by' # String | Comma separated list of resource paths for related resources to include in the response. Supported resource paths are `created_by` and `modified_by`.
}

begin
  # Get API key
  result = api_instance.get_api_key(api_key_id, opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->get_api_key: #{e}"
end
```

#### Using the get_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIKeyResponse>, Integer, Hash)> get_api_key_with_http_info(api_key_id, opts)

```ruby
begin
  # Get API key
  data, status_code, headers = api_instance.get_api_key_with_http_info(api_key_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIKeyResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->get_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_id** | **String** | The ID of the API key. |  |
| **include** | **String** | Comma separated list of resource paths for related resources to include in the response. Supported resource paths are &#x60;created_by&#x60; and &#x60;modified_by&#x60;. | [optional] |

### Return type

[**APIKeyResponse**](APIKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_current_user_application_key

> <ApplicationKeyResponse> get_current_user_application_key(app_key_id)

Get one application key owned by current user

Get an application key owned by current user

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
app_key_id = 'app_key_id_example' # String | The ID of the application key.

begin
  # Get one application key owned by current user
  result = api_instance.get_current_user_application_key(app_key_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->get_current_user_application_key: #{e}"
end
```

#### Using the get_current_user_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> get_current_user_application_key_with_http_info(app_key_id)

```ruby
begin
  # Get one application key owned by current user
  data, status_code, headers = api_instance.get_current_user_application_key_with_http_info(app_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->get_current_user_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key_id** | **String** | The ID of the application key. |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_api_keys

> <APIKeysResponse> list_api_keys(opts)

Get all API keys

List all API keys available for your account.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
opts = {
  page_size: 789, # Integer | Size for a given page.
  page_number: 789, # Integer | Specific page number to return.
  sort: DatadogAPIClient::V2::APIKeysSort::CREATED_AT_ASCENDING, # APIKeysSort | API key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
  filter: 'filter_example', # String | Filter API keys by the specified string.
  filter_created_at_start: '2020-11-24T18:46:21+00:00', # String | Only include API keys created on or after the specified date.
  filter_created_at_end: '2020-11-24T18:46:21+00:00', # String | Only include API keys created on or before the specified date.
  filter_modified_at_start: '2020-11-24T18:46:21+00:00', # String | Only include API keys modified on or after the specified date.
  filter_modified_at_end: '2020-11-24T18:46:21+00:00', # String | Only include API keys modified on or before the specified date.
  include: 'created_by,modified_by' # String | Comma separated list of resource paths for related resources to include in the response. Supported resource paths are `created_by` and `modified_by`.
}

begin
  # Get all API keys
  result = api_instance.list_api_keys(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->list_api_keys: #{e}"
end
```

#### Using the list_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIKeysResponse>, Integer, Hash)> list_api_keys_with_http_info(opts)

```ruby
begin
  # Get all API keys
  data, status_code, headers = api_instance.list_api_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIKeysResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->list_api_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_number** | **Integer** | Specific page number to return. | [optional][default to 0] |
| **sort** | **APIKeysSort** | API key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign. | [optional][default to &#39;name&#39;] |
| **filter** | **String** | Filter API keys by the specified string. | [optional] |
| **filter_created_at_start** | **String** | Only include API keys created on or after the specified date. | [optional] |
| **filter_created_at_end** | **String** | Only include API keys created on or before the specified date. | [optional] |
| **filter_modified_at_start** | **String** | Only include API keys modified on or after the specified date. | [optional] |
| **filter_modified_at_end** | **String** | Only include API keys modified on or before the specified date. | [optional] |
| **include** | **String** | Comma separated list of resource paths for related resources to include in the response. Supported resource paths are &#x60;created_by&#x60; and &#x60;modified_by&#x60;. | [optional] |

### Return type

[**APIKeysResponse**](APIKeysResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_application_keys

> <ListApplicationKeysResponse> list_application_keys(opts)

Get all application keys

List all application keys available for your org

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
opts = {
  page_size: 789, # Integer | Size for a given page.
  page_number: 789, # Integer | Specific page number to return.
  sort: DatadogAPIClient::V2::ApplicationKeysSort::CREATED_AT_ASCENDING, # ApplicationKeysSort | Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
  filter: 'filter_example', # String | Filter application keys by the specified string.
  filter_created_at_start: '2020-11-24T18:46:21+00:00', # String | Only include application keys created on or after the specified date.
  filter_created_at_end: '2020-11-24T18:46:21+00:00' # String | Only include application keys created on or before the specified date.
}

begin
  # Get all application keys
  result = api_instance.list_application_keys(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->list_application_keys: #{e}"
end
```

#### Using the list_application_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListApplicationKeysResponse>, Integer, Hash)> list_application_keys_with_http_info(opts)

```ruby
begin
  # Get all application keys
  data, status_code, headers = api_instance.list_application_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListApplicationKeysResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->list_application_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_number** | **Integer** | Specific page number to return. | [optional][default to 0] |
| **sort** | **ApplicationKeysSort** | Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign. | [optional][default to &#39;name&#39;] |
| **filter** | **String** | Filter application keys by the specified string. | [optional] |
| **filter_created_at_start** | **String** | Only include application keys created on or after the specified date. | [optional] |
| **filter_created_at_end** | **String** | Only include application keys created on or before the specified date. | [optional] |

### Return type

[**ListApplicationKeysResponse**](ListApplicationKeysResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_current_user_application_keys

> <ListApplicationKeysResponse> list_current_user_application_keys(opts)

Get all application keys owned by current user

List all application keys available for current user

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
opts = {
  page_size: 789, # Integer | Size for a given page.
  page_number: 789, # Integer | Specific page number to return.
  sort: DatadogAPIClient::V2::ApplicationKeysSort::CREATED_AT_ASCENDING, # ApplicationKeysSort | Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
  filter: 'filter_example', # String | Filter application keys by the specified string.
  filter_created_at_start: '2020-11-24T18:46:21+00:00', # String | Only include application keys created on or after the specified date.
  filter_created_at_end: '2020-11-24T18:46:21+00:00' # String | Only include application keys created on or before the specified date.
}

begin
  # Get all application keys owned by current user
  result = api_instance.list_current_user_application_keys(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->list_current_user_application_keys: #{e}"
end
```

#### Using the list_current_user_application_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListApplicationKeysResponse>, Integer, Hash)> list_current_user_application_keys_with_http_info(opts)

```ruby
begin
  # Get all application keys owned by current user
  data, status_code, headers = api_instance.list_current_user_application_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListApplicationKeysResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->list_current_user_application_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_number** | **Integer** | Specific page number to return. | [optional][default to 0] |
| **sort** | **ApplicationKeysSort** | Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign. | [optional][default to &#39;name&#39;] |
| **filter** | **String** | Filter application keys by the specified string. | [optional] |
| **filter_created_at_start** | **String** | Only include application keys created on or after the specified date. | [optional] |
| **filter_created_at_end** | **String** | Only include application keys created on or before the specified date. | [optional] |

### Return type

[**ListApplicationKeysResponse**](ListApplicationKeysResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_api_key

> <APIKeyResponse> update_api_key(api_key_id, body)

Edit an API key

Update an API key.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
api_key_id = 'api_key_id_example' # String | The ID of the API key.
body = DatadogAPIClient::V2::APIKeyUpdateRequest.new({data: DatadogAPIClient::V2::APIKeyUpdateData.new({attributes: DatadogAPIClient::V2::APIKeyUpdateAttributes.new({name: 'API Key for submitting metrics'}), id: '00112233-4455-6677-8899-aabbccddeeff', type: DatadogAPIClient::V2::APIKeysType::API_KEYS})}) # APIKeyUpdateRequest | 

begin
  # Edit an API key
  result = api_instance.update_api_key(api_key_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->update_api_key: #{e}"
end
```

#### Using the update_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIKeyResponse>, Integer, Hash)> update_api_key_with_http_info(api_key_id, body)

```ruby
begin
  # Edit an API key
  data, status_code, headers = api_instance.update_api_key_with_http_info(api_key_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIKeyResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->update_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_id** | **String** | The ID of the API key. |  |
| **body** | [**APIKeyUpdateRequest**](APIKeyUpdateRequest.md) |  |  |

### Return type

[**APIKeyResponse**](APIKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_application_key

> <ApplicationKeyResponse> update_application_key(app_key_id, body)

Edit an application key

Edit an application key

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
app_key_id = 'app_key_id_example' # String | The ID of the application key.
body = DatadogAPIClient::V2::ApplicationKeyUpdateRequest.new({data: DatadogAPIClient::V2::ApplicationKeyUpdateData.new({attributes: DatadogAPIClient::V2::ApplicationKeyUpdateAttributes.new({name: 'Application Key for submitting metrics'}), id: '00112233-4455-6677-8899-aabbccddeeff', type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS})}) # ApplicationKeyUpdateRequest | 

begin
  # Edit an application key
  result = api_instance.update_application_key(app_key_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->update_application_key: #{e}"
end
```

#### Using the update_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> update_application_key_with_http_info(app_key_id, body)

```ruby
begin
  # Edit an application key
  data, status_code, headers = api_instance.update_application_key_with_http_info(app_key_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->update_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key_id** | **String** | The ID of the application key. |  |
| **body** | [**ApplicationKeyUpdateRequest**](ApplicationKeyUpdateRequest.md) |  |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_current_user_application_key

> <ApplicationKeyResponse> update_current_user_application_key(app_key_id, body)

Edit an application key owned by current user

Edit an application key owned by current user

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V2::KeyManagementApi.new
app_key_id = 'app_key_id_example' # String | The ID of the application key.
body = DatadogAPIClient::V2::ApplicationKeyUpdateRequest.new({data: DatadogAPIClient::V2::ApplicationKeyUpdateData.new({attributes: DatadogAPIClient::V2::ApplicationKeyUpdateAttributes.new({name: 'Application Key for submitting metrics'}), id: '00112233-4455-6677-8899-aabbccddeeff', type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS})}) # ApplicationKeyUpdateRequest | 

begin
  # Edit an application key owned by current user
  result = api_instance.update_current_user_application_key(app_key_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->update_current_user_application_key: #{e}"
end
```

#### Using the update_current_user_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> update_current_user_application_key_with_http_info(app_key_id, body)

```ruby
begin
  # Edit an application key owned by current user
  data, status_code, headers = api_instance.update_current_user_application_key_with_http_info(app_key_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling KeyManagementApi->update_current_user_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key_id** | **String** | The ID of the application key. |  |
| **body** | [**ApplicationKeyUpdateRequest**](ApplicationKeyUpdateRequest.md) |  |  |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


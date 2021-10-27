# DatadogAPIClient::V2::ServiceAccountsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                                                     | HTTP request                                                                           | Description                                        |
| ---------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [**create_service_account_application_key**](ServiceAccountsAPI.md#create_service_account_application_key) | **POST** /api/v2/service_accounts/{service_account_id}/application_keys                | Create an application key for this service account |
| [**delete_service_account_application_key**](ServiceAccountsAPI.md#delete_service_account_application_key) | **DELETE** /api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id} | Delete an application key for this service account |
| [**get_service_account_application_key**](ServiceAccountsAPI.md#get_service_account_application_key)       | **GET** /api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id}    | Get one application key for this service account   |
| [**list_service_account_application_keys**](ServiceAccountsAPI.md#list_service_account_application_keys)   | **GET** /api/v2/service_accounts/{service_account_id}/application_keys                 | List application keys for this service account     |
| [**update_service_account_application_key**](ServiceAccountsAPI.md#update_service_account_application_key) | **PATCH** /api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id}  | Edit an application key for this service account   |

## create_service_account_application_key

> <ApplicationKeyResponse> create_service_account_application_key(service_account_id, body)

Create an application key for this service account.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the service account.
body = DatadogAPIClient::V2::ApplicationKeyCreateRequest.new({data: DatadogAPIClient::V2::ApplicationKeyCreateData.new({attributes: DatadogAPIClient::V2::ApplicationKeyCreateAttributes.new({name: 'Application Key for submitting metrics'}), type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS})}) # ApplicationKeyCreateRequest |

begin
  # Create an application key for this service account
  result = api_instance.create_service_account_application_key(service_account_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->create_service_account_application_key: #{e}"
end
```

#### Using the create_service_account_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationKeyResponse>, Integer, Hash)> create_service_account_application_key_with_http_info(service_account_id, body)

```ruby
begin
  # Create an application key for this service account
  data, status_code, headers = api_instance.create_service_account_application_key_with_http_info(service_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationKeyResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->create_service_account_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type                                                              | Description                    | Notes |
| ---------------------- | ----------------------------------------------------------------- | ------------------------------ | ----- |
| **service_account_id** | **String**                                                        | The ID of the service account. |       |
| **body**               | [**ApplicationKeyCreateRequest**](ApplicationKeyCreateRequest.md) |                                |       |

### Return type

[**ApplicationKeyResponse**](ApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_service_account_application_key

> delete_service_account_application_key(service_account_id, app_key_id)

Delete an application key owned by this service account.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the service account.
app_key_id = 'app_key_id_example' # String | The ID of the application key.

begin
  # Delete an application key for this service account
  api_instance.delete_service_account_application_key(service_account_id, app_key_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->delete_service_account_application_key: #{e}"
end
```

#### Using the delete_service_account_application_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_service_account_application_key_with_http_info(service_account_id, app_key_id)

```ruby
begin
  # Delete an application key for this service account
  data, status_code, headers = api_instance.delete_service_account_application_key_with_http_info(service_account_id, app_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->delete_service_account_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type       | Description                    | Notes |
| ---------------------- | ---------- | ------------------------------ | ----- |
| **service_account_id** | **String** | The ID of the service account. |       |
| **app_key_id**         | **String** | The ID of the application key. |       |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_service_account_application_key

> <PartialApplicationKeyResponse> get_service_account_application_key(service_account_id, app_key_id)

Get an application key owned by this service account.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the service account.
app_key_id = 'app_key_id_example' # String | The ID of the application key.

begin
  # Get one application key for this service account
  result = api_instance.get_service_account_application_key(service_account_id, app_key_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->get_service_account_application_key: #{e}"
end
```

#### Using the get_service_account_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialApplicationKeyResponse>, Integer, Hash)> get_service_account_application_key_with_http_info(service_account_id, app_key_id)

```ruby
begin
  # Get one application key for this service account
  data, status_code, headers = api_instance.get_service_account_application_key_with_http_info(service_account_id, app_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialApplicationKeyResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->get_service_account_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type       | Description                    | Notes |
| ---------------------- | ---------- | ------------------------------ | ----- |
| **service_account_id** | **String** | The ID of the service account. |       |
| **app_key_id**         | **String** | The ID of the application key. |       |

### Return type

[**PartialApplicationKeyResponse**](PartialApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_service_account_application_keys

> <ListApplicationKeysResponse> list_service_account_application_keys(service_account_id, opts)

List all application keys available for this service account.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the service account.
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0, # Integer | Specific page number to return.
  sort: DatadogAPIClient::V2::ApplicationKeysSort::CREATED_AT_ASCENDING, # ApplicationKeysSort | Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
  filter: 'filter_example', # String | Filter application keys by the specified string.
  filter_created_at_start: '2020-11-24T18:46:21+00:00', # String | Only include application keys created on or after the specified date.
  filter_created_at_end: '2020-11-24T18:46:21+00:00' # String | Only include application keys created on or before the specified date.
}

begin
  # List application keys for this service account
  result = api_instance.list_service_account_application_keys(service_account_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->list_service_account_application_keys: #{e}"
end
```

#### Using the list_service_account_application_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListApplicationKeysResponse>, Integer, Hash)> list_service_account_application_keys_with_http_info(service_account_id, opts)

```ruby
begin
  # List application keys for this service account
  data, status_code, headers = api_instance.list_service_account_application_keys_with_http_info(service_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListApplicationKeysResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->list_service_account_application_keys_with_http_info: #{e}"
end
```

### Parameters

| Name                        | Type                    | Description                                                                                                                                                        | Notes                                 |
| --------------------------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------- |
| **service_account_id**      | **String**              | The ID of the service account.                                                                                                                                     |                                       |
| **page_size**               | **Integer**             | Size for a given page.                                                                                                                                             | [optional][default to 10]             |
| **page_number**             | **Integer**             | Specific page number to return.                                                                                                                                    | [optional][default to 0]              |
| **sort**                    | **ApplicationKeysSort** | Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign. | [optional][default to &#39;name&#39;] |
| **filter**                  | **String**              | Filter application keys by the specified string.                                                                                                                   | [optional]                            |
| **filter_created_at_start** | **String**              | Only include application keys created on or after the specified date.                                                                                              | [optional]                            |
| **filter_created_at_end**   | **String**              | Only include application keys created on or before the specified date.                                                                                             | [optional]                            |

### Return type

[**ListApplicationKeysResponse**](ListApplicationKeysResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_service_account_application_key

> <PartialApplicationKeyResponse> update_service_account_application_key(service_account_id, app_key_id, body)

Edit an application key owned by this service account.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the service account.
app_key_id = 'app_key_id_example' # String | The ID of the application key.
body = DatadogAPIClient::V2::ApplicationKeyUpdateRequest.new({data: DatadogAPIClient::V2::ApplicationKeyUpdateData.new({attributes: DatadogAPIClient::V2::ApplicationKeyUpdateAttributes.new({name: 'Application Key for submitting metrics'}), id: '00112233-4455-6677-8899-aabbccddeeff', type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS})}) # ApplicationKeyUpdateRequest |

begin
  # Edit an application key for this service account
  result = api_instance.update_service_account_application_key(service_account_id, app_key_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->update_service_account_application_key: #{e}"
end
```

#### Using the update_service_account_application_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialApplicationKeyResponse>, Integer, Hash)> update_service_account_application_key_with_http_info(service_account_id, app_key_id, body)

```ruby
begin
  # Edit an application key for this service account
  data, status_code, headers = api_instance.update_service_account_application_key_with_http_info(service_account_id, app_key_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialApplicationKeyResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->update_service_account_application_key_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type                                                              | Description                    | Notes |
| ---------------------- | ----------------------------------------------------------------- | ------------------------------ | ----- |
| **service_account_id** | **String**                                                        | The ID of the service account. |       |
| **app_key_id**         | **String**                                                        | The ID of the application key. |       |
| **body**               | [**ApplicationKeyUpdateRequest**](ApplicationKeyUpdateRequest.md) |                                |       |

### Return type

[**PartialApplicationKeyResponse**](PartialApplicationKeyResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

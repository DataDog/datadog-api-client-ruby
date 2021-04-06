# DatadogAPIClient::V1::LogsIndexesAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_logs_index**](LogsIndexesAPI.md#create_logs_index) | **POST** /api/v1/logs/config/indexes | Create an index |
| [**get_logs_index**](LogsIndexesAPI.md#get_logs_index) | **GET** /api/v1/logs/config/indexes/{name} | Get an index |
| [**get_logs_index_order**](LogsIndexesAPI.md#get_logs_index_order) | **GET** /api/v1/logs/config/index-order | Get indexes order |
| [**list_log_indexes**](LogsIndexesAPI.md#list_log_indexes) | **GET** /api/v1/logs/config/indexes | Get all indexes |
| [**update_logs_index**](LogsIndexesAPI.md#update_logs_index) | **PUT** /api/v1/logs/config/indexes/{name} | Update an index |
| [**update_logs_index_order**](LogsIndexesAPI.md#update_logs_index_order) | **PUT** /api/v1/logs/config/index-order | Update indexes order |


## create_logs_index

> <LogsIndex> create_logs_index(body)

Create an index

Creates a new index. Returns the Index object passed in the request body when the request is successful.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
body = DatadogAPIClient::V1::LogsIndex.new({filter: DatadogAPIClient::V1::LogsFilter.new, name: 'main'}) # LogsIndex | Object containing the new index.

begin
  # Create an index
  result = api_instance.create_logs_index(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->create_logs_index: #{e}"
end
```

#### Using the create_logs_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsIndex>, Integer, Hash)> create_logs_index_with_http_info(body)

```ruby
begin
  # Create an index
  data, status_code, headers = api_instance.create_logs_index_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsIndex>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->create_logs_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsIndex**](LogsIndex.md) | Object containing the new index. |  |

### Return type

[**LogsIndex**](LogsIndex.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_logs_index

> <LogsIndex> get_logs_index(name)

Get an index

Get one log index from your organization. This endpoint takes no JSON arguments.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
name = 'name_example' # String | Name of the log index.

begin
  # Get an index
  result = api_instance.get_logs_index(name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->get_logs_index: #{e}"
end
```

#### Using the get_logs_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsIndex>, Integer, Hash)> get_logs_index_with_http_info(name)

```ruby
begin
  # Get an index
  data, status_code, headers = api_instance.get_logs_index_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsIndex>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->get_logs_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the log index. |  |

### Return type

[**LogsIndex**](LogsIndex.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logs_index_order

> <LogsIndexesOrder> get_logs_index_order

Get indexes order

Get the current order of your log indexes. This endpoint takes no JSON arguments.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new

begin
  # Get indexes order
  result = api_instance.get_logs_index_order
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->get_logs_index_order: #{e}"
end
```

#### Using the get_logs_index_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsIndexesOrder>, Integer, Hash)> get_logs_index_order_with_http_info

```ruby
begin
  # Get indexes order
  data, status_code, headers = api_instance.get_logs_index_order_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsIndexesOrder>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->get_logs_index_order_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsIndexesOrder**](LogsIndexesOrder.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_log_indexes

> <LogsIndexListResponse> list_log_indexes

Get all indexes

The Index object describes the configuration of a log index. This endpoint returns an array of the `LogIndex` objects of your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new

begin
  # Get all indexes
  result = api_instance.list_log_indexes
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->list_log_indexes: #{e}"
end
```

#### Using the list_log_indexes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsIndexListResponse>, Integer, Hash)> list_log_indexes_with_http_info

```ruby
begin
  # Get all indexes
  data, status_code, headers = api_instance.list_log_indexes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsIndexListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->list_log_indexes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsIndexListResponse**](LogsIndexListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_logs_index

> <LogsIndex> update_logs_index(name, body)

Update an index

Update an index as identified by its name. Returns the Index object passed in the request body when the request is successful.  Using the `PUT` method updates your index’s configuration by **replacing** your current configuration with the new one sent to your Datadog organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
name = 'name_example' # String | Name of the log index.
body = DatadogAPIClient::V1::LogsIndexUpdateRequest.new({filter: DatadogAPIClient::V1::LogsFilter.new}) # LogsIndexUpdateRequest | Object containing the new `LogsIndexUpdateRequest`.

begin
  # Update an index
  result = api_instance.update_logs_index(name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->update_logs_index: #{e}"
end
```

#### Using the update_logs_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsIndex>, Integer, Hash)> update_logs_index_with_http_info(name, body)

```ruby
begin
  # Update an index
  data, status_code, headers = api_instance.update_logs_index_with_http_info(name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsIndex>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->update_logs_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the log index. |  |
| **body** | [**LogsIndexUpdateRequest**](LogsIndexUpdateRequest.md) | Object containing the new &#x60;LogsIndexUpdateRequest&#x60;. |  |

### Return type

[**LogsIndex**](LogsIndex.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_logs_index_order

> <LogsIndexesOrder> update_logs_index_order(body)

Update indexes order

This endpoint updates the index order of your organization. It returns the index order object passed in the request body when the request is successful.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
body = DatadogAPIClient::V1::LogsIndexesOrder.new({index_names: ['index_names_example']}) # LogsIndexesOrder | Object containing the new ordered list of index names

begin
  # Update indexes order
  result = api_instance.update_logs_index_order(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->update_logs_index_order: #{e}"
end
```

#### Using the update_logs_index_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsIndexesOrder>, Integer, Hash)> update_logs_index_order_with_http_info(body)

```ruby
begin
  # Update indexes order
  data, status_code, headers = api_instance.update_logs_index_order_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsIndexesOrder>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->update_logs_index_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsIndexesOrder**](LogsIndexesOrder.md) | Object containing the new ordered list of index names |  |

### Return type

[**LogsIndexesOrder**](LogsIndexesOrder.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


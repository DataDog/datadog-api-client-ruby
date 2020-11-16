# DatadogAPIClient::V1::LogsIndexesApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_logs_index**](LogsIndexesApi.md#get_logs_index) | **GET** /api/v1/logs/config/indexes/{name} | Get an index
[**get_logs_index_order**](LogsIndexesApi.md#get_logs_index_order) | **GET** /api/v1/logs/config/index-order | Get indexes order
[**list_log_indexes**](LogsIndexesApi.md#list_log_indexes) | **GET** /api/v1/logs/config/indexes | Get all indexes
[**update_logs_index**](LogsIndexesApi.md#update_logs_index) | **PUT** /api/v1/logs/config/indexes/{name} | Update an index
[**update_logs_index_order**](LogsIndexesApi.md#update_logs_index_order) | **PUT** /api/v1/logs/config/index-order | Update indexes order



## get_logs_index

> LogsIndex get_logs_index(name)

Get an index

Get one log index from your organization. This endpoint takes no JSON arguments.

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

api_instance = DatadogAPIClient::V1::LogsIndexesApi.new
name = 'name_example' # String | Name of the log index.

begin
  #Get an index
  result = api_instance.get_logs_index(name)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling LogsIndexesApi->get_logs_index: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the log index. | 

### Return type

[**LogsIndex**](LogsIndex.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logs_index_order

> LogsIndexesOrder get_logs_index_order

Get indexes order

Get the current order of your log indexes. This endpoint takes no JSON arguments.

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

api_instance = DatadogAPIClient::V1::LogsIndexesApi.new

begin
  #Get indexes order
  result = api_instance.get_logs_index_order
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling LogsIndexesApi->get_logs_index_order: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsIndexesOrder**](LogsIndexesOrder.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_log_indexes

> LogsIndexListResponse list_log_indexes

Get all indexes

The Index object describes the configuration of a log index. This endpoint returns an array of the `LogIndex` objects of your organization.

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

api_instance = DatadogAPIClient::V1::LogsIndexesApi.new

begin
  #Get all indexes
  result = api_instance.list_log_indexes
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling LogsIndexesApi->list_log_indexes: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsIndexListResponse**](LogsIndexListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_logs_index

> LogsIndex update_logs_index(name, opts)

Update an index

Update an index as identified by its name. Returns the Index object passed in the request body when the request is successful.  Using the `PUT` method updates your index’s configuration by **replacing** your current configuration with the new one sent to your Datadog organization.

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

api_instance = DatadogAPIClient::V1::LogsIndexesApi.new
name = 'name_example' # String | Name of the log index.
opts = {
  body: DatadogAPIClient::V1::LogsIndexUpdateRequest.new # LogsIndexUpdateRequest | Object containing the new `LogsIndexUpdateRequest`.
}

begin
  #Update an index
  result = api_instance.update_logs_index(name, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling LogsIndexesApi->update_logs_index: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the log index. | 
 **body** | [**LogsIndexUpdateRequest**](LogsIndexUpdateRequest.md)| Object containing the new &#x60;LogsIndexUpdateRequest&#x60;. | [optional] 

### Return type

[**LogsIndex**](LogsIndex.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_logs_index_order

> LogsIndexesOrder update_logs_index_order(opts)

Update indexes order

This endpoint updates the index order of your organization. It returns the index order object passed in the request body when the request is successful.

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

api_instance = DatadogAPIClient::V1::LogsIndexesApi.new
opts = {
  body: DatadogAPIClient::V1::LogsIndexesOrder.new # LogsIndexesOrder | Object containing the new ordered list of index names
}

begin
  #Update indexes order
  result = api_instance.update_logs_index_order(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling LogsIndexesApi->update_logs_index_order: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LogsIndexesOrder**](LogsIndexesOrder.md)| Object containing the new ordered list of index names | [optional] 

### Return type

[**LogsIndexesOrder**](LogsIndexesOrder.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


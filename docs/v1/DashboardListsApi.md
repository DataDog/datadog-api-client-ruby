# DatadogAPIClient::V1::DashboardListsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_dashboard_list**](DashboardListsApi.md#create_dashboard_list) | **POST** /api/v1/dashboard/lists/manual | Create a dashboard list
[**delete_dashboard_list**](DashboardListsApi.md#delete_dashboard_list) | **DELETE** /api/v1/dashboard/lists/manual/{list_id} | Delete a dashboard list
[**get_dashboard_list**](DashboardListsApi.md#get_dashboard_list) | **GET** /api/v1/dashboard/lists/manual/{list_id} | Get a dashboard list
[**list_dashboard_lists**](DashboardListsApi.md#list_dashboard_lists) | **GET** /api/v1/dashboard/lists/manual | Get all dashboard lists
[**update_dashboard_list**](DashboardListsApi.md#update_dashboard_list) | **PUT** /api/v1/dashboard/lists/manual/{list_id} | Update a dashboard list



## create_dashboard_list

> DashboardList create_dashboard_list(body)

Create a dashboard list

Create an empty dashboard list.

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

api_instance = DatadogAPIClient::V1::DashboardListsApi.new
body = DatadogAPIClient::V1::DashboardList.new # DashboardList | Create a dashboard list request body.

begin
  #Create a dashboard list
  result = api_instance.create_dashboard_list(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardListsApi->create_dashboard_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DashboardList**](DashboardList.md)| Create a dashboard list request body. | 

### Return type

[**DashboardList**](DashboardList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_dashboard_list

> DashboardListDeleteResponse delete_dashboard_list(list_id)

Delete a dashboard list

Delete a dashboard list.

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

api_instance = DatadogAPIClient::V1::DashboardListsApi.new
list_id = 56 # Integer | ID of the dashboard list to delete.

begin
  #Delete a dashboard list
  result = api_instance.delete_dashboard_list(list_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardListsApi->delete_dashboard_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the dashboard list to delete. | 

### Return type

[**DashboardListDeleteResponse**](DashboardListDeleteResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dashboard_list

> DashboardList get_dashboard_list(list_id)

Get a dashboard list

Fetch an existing dashboard list's definition.

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

api_instance = DatadogAPIClient::V1::DashboardListsApi.new
list_id = 56 # Integer | ID of the dashboard list to fetch.

begin
  #Get a dashboard list
  result = api_instance.get_dashboard_list(list_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardListsApi->get_dashboard_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the dashboard list to fetch. | 

### Return type

[**DashboardList**](DashboardList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dashboard_lists

> DashboardListListResponse list_dashboard_lists

Get all dashboard lists

Fetch all of your existing dashboard list definitions.

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

api_instance = DatadogAPIClient::V1::DashboardListsApi.new

begin
  #Get all dashboard lists
  result = api_instance.list_dashboard_lists
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardListsApi->list_dashboard_lists: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DashboardListListResponse**](DashboardListListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_dashboard_list

> DashboardList update_dashboard_list(list_id, body)

Update a dashboard list

Update the name of a dashboard list.

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

api_instance = DatadogAPIClient::V1::DashboardListsApi.new
list_id = 56 # Integer | ID of the dashboard list to update.
body = DatadogAPIClient::V1::DashboardList.new # DashboardList | Update a dashboard list request body.

begin
  #Update a dashboard list
  result = api_instance.update_dashboard_list(list_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardListsApi->update_dashboard_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the dashboard list to update. | 
 **body** | [**DashboardList**](DashboardList.md)| Update a dashboard list request body. | 

### Return type

[**DashboardList**](DashboardList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


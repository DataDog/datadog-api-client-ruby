# DatadogAPIClient::V2::DashboardListsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_dashboard_list_items**](DashboardListsApi.md#create_dashboard_list_items) | **POST** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards | Add Items to a Dashboard List
[**delete_dashboard_list_items**](DashboardListsApi.md#delete_dashboard_list_items) | **DELETE** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards | Delete items from a dashboard list
[**get_dashboard_list_items**](DashboardListsApi.md#get_dashboard_list_items) | **GET** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards | Get a Dashboard List
[**update_dashboard_list_items**](DashboardListsApi.md#update_dashboard_list_items) | **PUT** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards | Update items of a dashboard list



## create_dashboard_list_items

> DashboardListAddItemsResponse create_dashboard_list_items(dashboard_list_id, body)

Add Items to a Dashboard List

Add dashboards to an existing dashboard list.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::DashboardListsApi.new
dashboard_list_id = 56 # Integer | ID of the dashboard list to add items to.
body = DatadogAPIClient::V2::DashboardListAddItemsRequest.new # DashboardListAddItemsRequest | Dashboards to add to the dashboard list.

begin
  #Add Items to a Dashboard List
  result = api_instance.create_dashboard_list_items(dashboard_list_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling DashboardListsApi->create_dashboard_list_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_list_id** | **Integer**| ID of the dashboard list to add items to. | 
 **body** | [**DashboardListAddItemsRequest**](DashboardListAddItemsRequest.md)| Dashboards to add to the dashboard list. | 

### Return type

[**DashboardListAddItemsResponse**](DashboardListAddItemsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_dashboard_list_items

> DashboardListDeleteItemsResponse delete_dashboard_list_items(dashboard_list_id, body)

Delete items from a dashboard list

Delete dashboards from an existing dashboard list.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::DashboardListsApi.new
dashboard_list_id = 56 # Integer | ID of the dashboard list to delete items from.
body = DatadogAPIClient::V2::DashboardListDeleteItemsRequest.new # DashboardListDeleteItemsRequest | Dashboards to delete from the dashboard list.

begin
  #Delete items from a dashboard list
  result = api_instance.delete_dashboard_list_items(dashboard_list_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling DashboardListsApi->delete_dashboard_list_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_list_id** | **Integer**| ID of the dashboard list to delete items from. | 
 **body** | [**DashboardListDeleteItemsRequest**](DashboardListDeleteItemsRequest.md)| Dashboards to delete from the dashboard list. | 

### Return type

[**DashboardListDeleteItemsResponse**](DashboardListDeleteItemsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_dashboard_list_items

> DashboardListItems get_dashboard_list_items(dashboard_list_id)

Get a Dashboard List

Fetch the dashboard list’s dashboard definitions.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::DashboardListsApi.new
dashboard_list_id = 56 # Integer | ID of the dashboard list to get items from.

begin
  #Get a Dashboard List
  result = api_instance.get_dashboard_list_items(dashboard_list_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling DashboardListsApi->get_dashboard_list_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_list_id** | **Integer**| ID of the dashboard list to get items from. | 

### Return type

[**DashboardListItems**](DashboardListItems.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_dashboard_list_items

> DashboardListUpdateItemsResponse update_dashboard_list_items(dashboard_list_id, body)

Update items of a dashboard list

Update dashboards of an existing dashboard list.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::DashboardListsApi.new
dashboard_list_id = 56 # Integer | ID of the dashboard list to update items from.
body = DatadogAPIClient::V2::DashboardListUpdateItemsRequest.new # DashboardListUpdateItemsRequest | New dashboards of the dashboard list.

begin
  #Update items of a dashboard list
  result = api_instance.update_dashboard_list_items(dashboard_list_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling DashboardListsApi->update_dashboard_list_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_list_id** | **Integer**| ID of the dashboard list to update items from. | 
 **body** | [**DashboardListUpdateItemsRequest**](DashboardListUpdateItemsRequest.md)| New dashboards of the dashboard list. | 

### Return type

[**DashboardListUpdateItemsResponse**](DashboardListUpdateItemsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


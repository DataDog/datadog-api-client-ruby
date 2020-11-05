# DatadogAPIClient::V1::DashboardsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_dashboard**](DashboardsApi.md#create_dashboard) | **POST** /api/v1/dashboard | Create a new dashboard
[**delete_dashboard**](DashboardsApi.md#delete_dashboard) | **DELETE** /api/v1/dashboard/{dashboard_id} | Delete a dashboard
[**get_dashboard**](DashboardsApi.md#get_dashboard) | **GET** /api/v1/dashboard/{dashboard_id} | Get a dashboard
[**list_dashboards**](DashboardsApi.md#list_dashboards) | **GET** /api/v1/dashboard | Get all dashboards
[**update_dashboard**](DashboardsApi.md#update_dashboard) | **PUT** /api/v1/dashboard/{dashboard_id} | Update a dashboard



## create_dashboard

> Dashboard create_dashboard(body)

Create a new dashboard

Create a dashboard using the specified options.

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

api_instance = DatadogAPIClient::V1::DashboardsApi.new
body = DatadogAPIClient::V1::Dashboard.new # Dashboard | Create a dashboard request body.

begin
  #Create a new dashboard
  result = api_instance.create_dashboard(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardsApi->create_dashboard: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Dashboard**](Dashboard.md)| Create a dashboard request body. | 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_dashboard

> DashboardDeleteResponse delete_dashboard(dashboard_id)

Delete a dashboard

Delete a dashboard using the specified ID.

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

api_instance = DatadogAPIClient::V1::DashboardsApi.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.

begin
  #Delete a dashboard
  result = api_instance.delete_dashboard(dashboard_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardsApi->delete_dashboard: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_id** | **String**| The ID of the dashboard. | 

### Return type

[**DashboardDeleteResponse**](DashboardDeleteResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dashboard

> Dashboard get_dashboard(dashboard_id)

Get a dashboard

Get a dashboard using the specified ID.

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

api_instance = DatadogAPIClient::V1::DashboardsApi.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.

begin
  #Get a dashboard
  result = api_instance.get_dashboard(dashboard_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardsApi->get_dashboard: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_id** | **String**| The ID of the dashboard. | 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dashboards

> DashboardSummary list_dashboards

Get all dashboards

Get all dashboards.  **Note**: This query will only return custom created or cloned dashboards. This query will not return preset dashboards.

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

api_instance = DatadogAPIClient::V1::DashboardsApi.new

begin
  #Get all dashboards
  result = api_instance.list_dashboards
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardsApi->list_dashboards: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DashboardSummary**](DashboardSummary.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_dashboard

> Dashboard update_dashboard(dashboard_id, body)

Update a dashboard

Update a dashboard using the specified ID.

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

api_instance = DatadogAPIClient::V1::DashboardsApi.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.
body = DatadogAPIClient::V1::Dashboard.new # Dashboard | Update Dashboard request body.

begin
  #Update a dashboard
  result = api_instance.update_dashboard(dashboard_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DashboardsApi->update_dashboard: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_id** | **String**| The ID of the dashboard. | 
 **body** | [**Dashboard**](Dashboard.md)| Update Dashboard request body. | 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


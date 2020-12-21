# DatadogAPIClient::V1::DashboardsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_dashboard**](DashboardsApi.md#create_dashboard) | **POST** /api/v1/dashboard | Create a new dashboard |
| [**delete_dashboard**](DashboardsApi.md#delete_dashboard) | **DELETE** /api/v1/dashboard/{dashboard_id} | Delete a dashboard |
| [**get_dashboard**](DashboardsApi.md#get_dashboard) | **GET** /api/v1/dashboard/{dashboard_id} | Get a dashboard |
| [**list_dashboards**](DashboardsApi.md#list_dashboards) | **GET** /api/v1/dashboard | Get all dashboards |
| [**update_dashboard**](DashboardsApi.md#update_dashboard) | **PUT** /api/v1/dashboard/{dashboard_id} | Update a dashboard |


## create_dashboard

> <Dashboard> create_dashboard(body)

Create a new dashboard

Create a dashboard using the specified options. When defining queries in your widgets, take note of which queries should have the `as_count()` or `as_rate()` modifiers appended. Refer to the following [documentation](https://docs.datadoghq.com/developers/metrics/type_modifiers/?tab=count#in-application-modifiers) for more information on these modifiers.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::DashboardsApi.new
body = DatadogAPIClient::V1::Dashboard.new({layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED, title: 'title_example', widgets: [DatadogAPIClient::V1::Widget.new({definition: DatadogAPIClient::V1::AlertGraphWidgetDefinition.new({alert_id: 'alert_id_example', type: DatadogAPIClient::V1::AlertGraphWidgetDefinitionType::ALERT_GRAPH, viz_type: DatadogAPIClient::V1::WidgetVizType::TIMESERIES})})]}) # Dashboard | Create a dashboard request body.

begin
  # Create a new dashboard
  result = api_instance.create_dashboard(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->create_dashboard: #{e}"
end
```

#### Using the create_dashboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dashboard>, Integer, Hash)> create_dashboard_with_http_info(body)

```ruby
begin
  # Create a new dashboard
  data, status_code, headers = api_instance.create_dashboard_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dashboard>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->create_dashboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Dashboard**](Dashboard.md) | Create a dashboard request body. |  |

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_dashboard

> <DashboardDeleteResponse> delete_dashboard(dashboard_id)

Delete a dashboard

Delete a dashboard using the specified ID.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::DashboardsApi.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.

begin
  # Delete a dashboard
  result = api_instance.delete_dashboard(dashboard_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->delete_dashboard: #{e}"
end
```

#### Using the delete_dashboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardDeleteResponse>, Integer, Hash)> delete_dashboard_with_http_info(dashboard_id)

```ruby
begin
  # Delete a dashboard
  data, status_code, headers = api_instance.delete_dashboard_with_http_info(dashboard_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardDeleteResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->delete_dashboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboard_id** | **String** | The ID of the dashboard. |  |

### Return type

[**DashboardDeleteResponse**](DashboardDeleteResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dashboard

> <Dashboard> get_dashboard(dashboard_id)

Get a dashboard

Get a dashboard using the specified ID.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::DashboardsApi.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.

begin
  # Get a dashboard
  result = api_instance.get_dashboard(dashboard_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->get_dashboard: #{e}"
end
```

#### Using the get_dashboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dashboard>, Integer, Hash)> get_dashboard_with_http_info(dashboard_id)

```ruby
begin
  # Get a dashboard
  data, status_code, headers = api_instance.get_dashboard_with_http_info(dashboard_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dashboard>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->get_dashboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboard_id** | **String** | The ID of the dashboard. |  |

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dashboards

> <DashboardSummary> list_dashboards

Get all dashboards

Get all dashboards.  **Note**: This query will only return custom created or cloned dashboards. This query will not return preset dashboards.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::DashboardsApi.new

begin
  # Get all dashboards
  result = api_instance.list_dashboards
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->list_dashboards: #{e}"
end
```

#### Using the list_dashboards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardSummary>, Integer, Hash)> list_dashboards_with_http_info

```ruby
begin
  # Get all dashboards
  data, status_code, headers = api_instance.list_dashboards_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardSummary>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->list_dashboards_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DashboardSummary**](DashboardSummary.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_dashboard

> <Dashboard> update_dashboard(dashboard_id, body)

Update a dashboard

Update a dashboard using the specified ID.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::DashboardsApi.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.
body = DatadogAPIClient::V1::Dashboard.new({layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED, title: 'title_example', widgets: [DatadogAPIClient::V1::Widget.new({definition: DatadogAPIClient::V1::AlertGraphWidgetDefinition.new({alert_id: 'alert_id_example', type: DatadogAPIClient::V1::AlertGraphWidgetDefinitionType::ALERT_GRAPH, viz_type: DatadogAPIClient::V1::WidgetVizType::TIMESERIES})})]}) # Dashboard | Update Dashboard request body.

begin
  # Update a dashboard
  result = api_instance.update_dashboard(dashboard_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->update_dashboard: #{e}"
end
```

#### Using the update_dashboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dashboard>, Integer, Hash)> update_dashboard_with_http_info(dashboard_id, body)

```ruby
begin
  # Update a dashboard
  data, status_code, headers = api_instance.update_dashboard_with_http_info(dashboard_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dashboard>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling DashboardsApi->update_dashboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboard_id** | **String** | The ID of the dashboard. |  |
| **body** | [**Dashboard**](Dashboard.md) | Update Dashboard request body. |  |

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


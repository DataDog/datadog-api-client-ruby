# DatadogAPIClient::V1::DashboardsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_dashboard**](DashboardsAPI.md#create_dashboard) | **POST** /api/v1/dashboard | Create a new dashboard |
| [**delete_dashboard**](DashboardsAPI.md#delete_dashboard) | **DELETE** /api/v1/dashboard/{dashboard_id} | Delete a dashboard |
| [**delete_dashboards**](DashboardsAPI.md#delete_dashboards) | **DELETE** /api/v1/dashboard | Delete dashboards |
| [**get_dashboard**](DashboardsAPI.md#get_dashboard) | **GET** /api/v1/dashboard/{dashboard_id} | Get a dashboard |
| [**list_dashboards**](DashboardsAPI.md#list_dashboards) | **GET** /api/v1/dashboard | Get all dashboards |
| [**restore_dashboards**](DashboardsAPI.md#restore_dashboards) | **PATCH** /api/v1/dashboard | Restore deleted dashboards |
| [**update_dashboard**](DashboardsAPI.md#update_dashboard) | **PUT** /api/v1/dashboard/{dashboard_id} | Update a dashboard |


## create_dashboard

> <Dashboard> create_dashboard(body)

Create a dashboard using the specified options. When defining queries in your widgets, take note of which queries should have the `as_count()` or `as_rate()` modifiers appended.
Refer to the following [documentation](https://docs.datadoghq.com/developers/metrics/type_modifiers/?tab=count#in-application-modifiers) for more information on these modifiers.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
body = DatadogAPIClient::V1::Dashboard.new({layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED, title: 'title_example', widgets: [DatadogAPIClient::V1::Widget.new({definition: DatadogAPIClient::V1::AlertGraphWidgetDefinition.new({alert_id: 'alert_id_example', type: DatadogAPIClient::V1::AlertGraphWidgetDefinitionType::ALERT_GRAPH, viz_type: DatadogAPIClient::V1::WidgetVizType::TIMESERIES})})]}) # Dashboard | Create a dashboard request body.

begin
  # Create a new dashboard
  result = api_instance.create_dashboard(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->create_dashboard: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->create_dashboard_with_http_info: #{e}"
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

Delete a dashboard using the specified ID.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.

begin
  # Delete a dashboard
  result = api_instance.delete_dashboard(dashboard_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->delete_dashboard: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->delete_dashboard_with_http_info: #{e}"
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


## delete_dashboards

> delete_dashboards(body)

Delete dashboards using the specified IDs. If there are any failures, no dashboards will be deleted (partial success is not allowed).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
body = DatadogAPIClient::V1::DashboardBulkDeleteRequest.new({data: [DatadogAPIClient::V1::DashboardBulkActionData.new({id: '123-abc-456', type: DatadogAPIClient::V1::DashboardResourceType::DASHBOARD})]}) # DashboardBulkDeleteRequest | Delete dashboards request body.

begin
  # Delete dashboards
  api_instance.delete_dashboards(body)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->delete_dashboards: #{e}"
end
```

#### Using the delete_dashboards_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_dashboards_with_http_info(body)

```ruby
begin
  # Delete dashboards
  data, status_code, headers = api_instance.delete_dashboards_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->delete_dashboards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DashboardBulkDeleteRequest**](DashboardBulkDeleteRequest.md) | Delete dashboards request body. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_dashboard

> <Dashboard> get_dashboard(dashboard_id)

Get a dashboard using the specified ID.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.

begin
  # Get a dashboard
  result = api_instance.get_dashboard(dashboard_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->get_dashboard: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->get_dashboard_with_http_info: #{e}"
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

> <DashboardSummary> list_dashboards(opts)

Get all dashboards.

**Note**: This query will only return custom created or cloned dashboards.
This query will not return preset dashboards.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
opts = {
  filter_shared: true # Boolean | When `true`, this query only returns shared custom created or cloned dashboards.
}

begin
  # Get all dashboards
  result = api_instance.list_dashboards(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->list_dashboards: #{e}"
end
```

#### Using the list_dashboards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardSummary>, Integer, Hash)> list_dashboards_with_http_info(opts)

```ruby
begin
  # Get all dashboards
  data, status_code, headers = api_instance.list_dashboards_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardSummary>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->list_dashboards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_shared** | **Boolean** | When &#x60;true&#x60;, this query only returns shared custom created or cloned dashboards. | [optional] |

### Return type

[**DashboardSummary**](DashboardSummary.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_dashboards

> restore_dashboards(body)

Restore dashboards using the specified IDs. If there are any failures, no dashboards will be restored (partial success is not allowed).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
body = DatadogAPIClient::V1::DashboardRestoreRequest.new({data: [DatadogAPIClient::V1::DashboardBulkActionData.new({id: '123-abc-456', type: DatadogAPIClient::V1::DashboardResourceType::DASHBOARD})]}) # DashboardRestoreRequest | Restore dashboards request body.

begin
  # Restore deleted dashboards
  api_instance.restore_dashboards(body)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->restore_dashboards: #{e}"
end
```

#### Using the restore_dashboards_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> restore_dashboards_with_http_info(body)

```ruby
begin
  # Restore deleted dashboards
  data, status_code, headers = api_instance.restore_dashboards_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->restore_dashboards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DashboardRestoreRequest**](DashboardRestoreRequest.md) | Restore dashboards request body. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_dashboard

> <Dashboard> update_dashboard(dashboard_id, body)

Update a dashboard using the specified ID.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.
body = DatadogAPIClient::V1::Dashboard.new({layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED, title: 'title_example', widgets: [DatadogAPIClient::V1::Widget.new({definition: DatadogAPIClient::V1::AlertGraphWidgetDefinition.new({alert_id: 'alert_id_example', type: DatadogAPIClient::V1::AlertGraphWidgetDefinitionType::ALERT_GRAPH, viz_type: DatadogAPIClient::V1::WidgetVizType::TIMESERIES})})]}) # Dashboard | Update Dashboard request body.

begin
  # Update a dashboard
  result = api_instance.update_dashboard(dashboard_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->update_dashboard: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->update_dashboard_with_http_info: #{e}"
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


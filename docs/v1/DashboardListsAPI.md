# DatadogAPIClient::V1::DashboardListsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_dashboard_list**](DashboardListsAPI.md#create_dashboard_list) | **POST** /api/v1/dashboard/lists/manual | Create a dashboard list |
| [**delete_dashboard_list**](DashboardListsAPI.md#delete_dashboard_list) | **DELETE** /api/v1/dashboard/lists/manual/{list_id} | Delete a dashboard list |
| [**get_dashboard_list**](DashboardListsAPI.md#get_dashboard_list) | **GET** /api/v1/dashboard/lists/manual/{list_id} | Get a dashboard list |
| [**list_dashboard_lists**](DashboardListsAPI.md#list_dashboard_lists) | **GET** /api/v1/dashboard/lists/manual | Get all dashboard lists |
| [**update_dashboard_list**](DashboardListsAPI.md#update_dashboard_list) | **PUT** /api/v1/dashboard/lists/manual/{list_id} | Update a dashboard list |


## create_dashboard_list

> <DashboardList> create_dashboard_list(body)

Create an empty dashboard list.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new
body = DatadogAPIClient::V1::DashboardList.new({name: 'My Dashboard'}) # DashboardList | Create a dashboard list request body.

begin
  # Create a dashboard list
  result = api_instance.create_dashboard_list(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->create_dashboard_list: #{e}"
end
```

#### Using the create_dashboard_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardList>, Integer, Hash)> create_dashboard_list_with_http_info(body)

```ruby
begin
  # Create a dashboard list
  data, status_code, headers = api_instance.create_dashboard_list_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardList>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->create_dashboard_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DashboardList**](DashboardList.md) | Create a dashboard list request body. |  |

### Return type

[**DashboardList**](DashboardList.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_dashboard_list

> <DashboardListDeleteResponse> delete_dashboard_list(list_id)

Delete a dashboard list.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new
list_id = 789 # Integer | ID of the dashboard list to delete.

begin
  # Delete a dashboard list
  result = api_instance.delete_dashboard_list(list_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->delete_dashboard_list: #{e}"
end
```

#### Using the delete_dashboard_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardListDeleteResponse>, Integer, Hash)> delete_dashboard_list_with_http_info(list_id)

```ruby
begin
  # Delete a dashboard list
  data, status_code, headers = api_instance.delete_dashboard_list_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardListDeleteResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->delete_dashboard_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the dashboard list to delete. |  |

### Return type

[**DashboardListDeleteResponse**](DashboardListDeleteResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dashboard_list

> <DashboardList> get_dashboard_list(list_id)

Fetch an existing dashboard list's definition.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new
list_id = 789 # Integer | ID of the dashboard list to fetch.

begin
  # Get a dashboard list
  result = api_instance.get_dashboard_list(list_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->get_dashboard_list: #{e}"
end
```

#### Using the get_dashboard_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardList>, Integer, Hash)> get_dashboard_list_with_http_info(list_id)

```ruby
begin
  # Get a dashboard list
  data, status_code, headers = api_instance.get_dashboard_list_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardList>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->get_dashboard_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the dashboard list to fetch. |  |

### Return type

[**DashboardList**](DashboardList.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dashboard_lists

> <DashboardListListResponse> list_dashboard_lists

Fetch all of your existing dashboard list definitions.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new

begin
  # Get all dashboard lists
  result = api_instance.list_dashboard_lists
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->list_dashboard_lists: #{e}"
end
```

#### Using the list_dashboard_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardListListResponse>, Integer, Hash)> list_dashboard_lists_with_http_info

```ruby
begin
  # Get all dashboard lists
  data, status_code, headers = api_instance.list_dashboard_lists_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardListListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->list_dashboard_lists_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DashboardListListResponse**](DashboardListListResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_dashboard_list

> <DashboardList> update_dashboard_list(list_id, body)

Update the name of a dashboard list.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new
list_id = 789 # Integer | ID of the dashboard list to update.
body = DatadogAPIClient::V1::DashboardList.new({name: 'My Dashboard'}) # DashboardList | Update a dashboard list request body.

begin
  # Update a dashboard list
  result = api_instance.update_dashboard_list(list_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->update_dashboard_list: #{e}"
end
```

#### Using the update_dashboard_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardList>, Integer, Hash)> update_dashboard_list_with_http_info(list_id, body)

```ruby
begin
  # Update a dashboard list
  data, status_code, headers = api_instance.update_dashboard_list_with_http_info(list_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardList>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->update_dashboard_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the dashboard list to update. |  |
| **body** | [**DashboardList**](DashboardList.md) | Update a dashboard list request body. |  |

### Return type

[**DashboardList**](DashboardList.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


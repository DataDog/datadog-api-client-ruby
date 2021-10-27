# DatadogAPIClient::V2::DashboardListsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                              | HTTP request                                                             | Description                        |
| ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------ | ---------------------------------- |
| [**create_dashboard_list_items**](DashboardListsAPI.md#create_dashboard_list_items) | **POST** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards   | Add Items to a Dashboard List      |
| [**delete_dashboard_list_items**](DashboardListsAPI.md#delete_dashboard_list_items) | **DELETE** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards | Delete items from a dashboard list |
| [**get_dashboard_list_items**](DashboardListsAPI.md#get_dashboard_list_items)       | **GET** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards    | Get items of a Dashboard List      |
| [**update_dashboard_list_items**](DashboardListsAPI.md#update_dashboard_list_items) | **PUT** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards    | Update items of a dashboard list   |

## create_dashboard_list_items

> <DashboardListAddItemsResponse> create_dashboard_list_items(dashboard_list_id, body)

Add dashboards to an existing dashboard list.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
dashboard_list_id = 789 # Integer | ID of the dashboard list to add items to.
body = DatadogAPIClient::V2::DashboardListAddItemsRequest.new # DashboardListAddItemsRequest | Dashboards to add to the dashboard list.

begin
  # Add Items to a Dashboard List
  result = api_instance.create_dashboard_list_items(dashboard_list_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->create_dashboard_list_items: #{e}"
end
```

#### Using the create_dashboard_list_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardListAddItemsResponse>, Integer, Hash)> create_dashboard_list_items_with_http_info(dashboard_list_id, body)

```ruby
begin
  # Add Items to a Dashboard List
  data, status_code, headers = api_instance.create_dashboard_list_items_with_http_info(dashboard_list_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardListAddItemsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->create_dashboard_list_items_with_http_info: #{e}"
end
```

### Parameters

| Name                  | Type                                                                | Description                               | Notes |
| --------------------- | ------------------------------------------------------------------- | ----------------------------------------- | ----- |
| **dashboard_list_id** | **Integer**                                                         | ID of the dashboard list to add items to. |       |
| **body**              | [**DashboardListAddItemsRequest**](DashboardListAddItemsRequest.md) | Dashboards to add to the dashboard list.  |       |

### Return type

[**DashboardListAddItemsResponse**](DashboardListAddItemsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_dashboard_list_items

> <DashboardListDeleteItemsResponse> delete_dashboard_list_items(dashboard_list_id, body)

Delete dashboards from an existing dashboard list.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
dashboard_list_id = 789 # Integer | ID of the dashboard list to delete items from.
body = DatadogAPIClient::V2::DashboardListDeleteItemsRequest.new # DashboardListDeleteItemsRequest | Dashboards to delete from the dashboard list.

begin
  # Delete items from a dashboard list
  result = api_instance.delete_dashboard_list_items(dashboard_list_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->delete_dashboard_list_items: #{e}"
end
```

#### Using the delete_dashboard_list_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardListDeleteItemsResponse>, Integer, Hash)> delete_dashboard_list_items_with_http_info(dashboard_list_id, body)

```ruby
begin
  # Delete items from a dashboard list
  data, status_code, headers = api_instance.delete_dashboard_list_items_with_http_info(dashboard_list_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardListDeleteItemsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->delete_dashboard_list_items_with_http_info: #{e}"
end
```

### Parameters

| Name                  | Type                                                                      | Description                                    | Notes |
| --------------------- | ------------------------------------------------------------------------- | ---------------------------------------------- | ----- |
| **dashboard_list_id** | **Integer**                                                               | ID of the dashboard list to delete items from. |       |
| **body**              | [**DashboardListDeleteItemsRequest**](DashboardListDeleteItemsRequest.md) | Dashboards to delete from the dashboard list.  |       |

### Return type

[**DashboardListDeleteItemsResponse**](DashboardListDeleteItemsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## get_dashboard_list_items

> <DashboardListItems> get_dashboard_list_items(dashboard_list_id)

Fetch the dashboard list’s dashboard definitions.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
dashboard_list_id = 789 # Integer | ID of the dashboard list to get items from.

begin
  # Get items of a Dashboard List
  result = api_instance.get_dashboard_list_items(dashboard_list_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->get_dashboard_list_items: #{e}"
end
```

#### Using the get_dashboard_list_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardListItems>, Integer, Hash)> get_dashboard_list_items_with_http_info(dashboard_list_id)

```ruby
begin
  # Get items of a Dashboard List
  data, status_code, headers = api_instance.get_dashboard_list_items_with_http_info(dashboard_list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardListItems>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->get_dashboard_list_items_with_http_info: #{e}"
end
```

### Parameters

| Name                  | Type        | Description                                 | Notes |
| --------------------- | ----------- | ------------------------------------------- | ----- |
| **dashboard_list_id** | **Integer** | ID of the dashboard list to get items from. |       |

### Return type

[**DashboardListItems**](DashboardListItems.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_dashboard_list_items

> <DashboardListUpdateItemsResponse> update_dashboard_list_items(dashboard_list_id, body)

Update dashboards of an existing dashboard list.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
dashboard_list_id = 789 # Integer | ID of the dashboard list to update items from.
body = DatadogAPIClient::V2::DashboardListUpdateItemsRequest.new # DashboardListUpdateItemsRequest | New dashboards of the dashboard list.

begin
  # Update items of a dashboard list
  result = api_instance.update_dashboard_list_items(dashboard_list_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->update_dashboard_list_items: #{e}"
end
```

#### Using the update_dashboard_list_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DashboardListUpdateItemsResponse>, Integer, Hash)> update_dashboard_list_items_with_http_info(dashboard_list_id, body)

```ruby
begin
  # Update items of a dashboard list
  data, status_code, headers = api_instance.update_dashboard_list_items_with_http_info(dashboard_list_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DashboardListUpdateItemsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->update_dashboard_list_items_with_http_info: #{e}"
end
```

### Parameters

| Name                  | Type                                                                      | Description                                    | Notes |
| --------------------- | ------------------------------------------------------------------------- | ---------------------------------------------- | ----- |
| **dashboard_list_id** | **Integer**                                                               | ID of the dashboard list to update items from. |       |
| **body**              | [**DashboardListUpdateItemsRequest**](DashboardListUpdateItemsRequest.md) | New dashboards of the dashboard list.          |       |

### Return type

[**DashboardListUpdateItemsResponse**](DashboardListUpdateItemsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# DatadogAPIClient::V1::NotebooksAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_notebook**](NotebooksAPI.md#create_notebook) | **POST** /api/v1/notebooks | Create a notebook |
| [**delete_notebook**](NotebooksAPI.md#delete_notebook) | **DELETE** /api/v1/notebooks/{notebook_id} | Delete a notebook |
| [**get_notebook**](NotebooksAPI.md#get_notebook) | **GET** /api/v1/notebooks/{notebook_id} | Get a notebook |
| [**list_notebooks**](NotebooksAPI.md#list_notebooks) | **GET** /api/v1/notebooks | Get all notebooks |
| [**update_notebook**](NotebooksAPI.md#update_notebook) | **PUT** /api/v1/notebooks/{notebook_id} | Update a notebook |


## create_notebook

> <NotebookResponse> create_notebook(body)

Create a notebook

Create a notebook using the specified options.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
body = DatadogAPIClient::V1::NotebookCreateRequest.new({data: DatadogAPIClient::V1::NotebookCreateData.new({attributes: DatadogAPIClient::V1::NotebookCreateDataAttributes.new({cells: [DatadogAPIClient::V1::NotebookCellCreateRequest.new({attributes: DatadogAPIClient::V1::NotebookDistributionCellAttributes.new({definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({requests: [DatadogAPIClient::V1::DistributionWidgetRequest.new], type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION})}), type: DatadogAPIClient::V1::NotebookCellResourceType::NOTEBOOK_CELLS})], name: 'Example Notebook', time: DatadogAPIClient::V1::NotebookAbsoluteTime.new({_end: Time.parse('2021-02-24T20:18:28Z'), start: Time.parse('2021-02-24T19:18:28Z')})}), type: DatadogAPIClient::V1::NotebookResourceType::NOTEBOOKS})}) # NotebookCreateRequest | The JSON description of the notebook you want to create.

begin
  # Create a notebook
  result = api_instance.create_notebook(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->create_notebook: #{e}"
end
```

#### Using the create_notebook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotebookResponse>, Integer, Hash)> create_notebook_with_http_info(body)

```ruby
begin
  # Create a notebook
  data, status_code, headers = api_instance.create_notebook_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotebookResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->create_notebook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**NotebookCreateRequest**](NotebookCreateRequest.md) | The JSON description of the notebook you want to create. |  |

### Return type

[**NotebookResponse**](NotebookResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_notebook

> delete_notebook(notebook_id)

Delete a notebook

Delete a notebook using the specified ID.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
notebook_id = 789 # Integer | Unique ID, assigned when you create the notebook.

begin
  # Delete a notebook
  api_instance.delete_notebook(notebook_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->delete_notebook: #{e}"
end
```

#### Using the delete_notebook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_notebook_with_http_info(notebook_id)

```ruby
begin
  # Delete a notebook
  data, status_code, headers = api_instance.delete_notebook_with_http_info(notebook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->delete_notebook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notebook_id** | **Integer** | Unique ID, assigned when you create the notebook. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notebook

> <NotebookResponse> get_notebook(notebook_id)

Get a notebook

Get a notebook using the specified notebook ID.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
notebook_id = 789 # Integer | Unique ID, assigned when you create the notebook.

begin
  # Get a notebook
  result = api_instance.get_notebook(notebook_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->get_notebook: #{e}"
end
```

#### Using the get_notebook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotebookResponse>, Integer, Hash)> get_notebook_with_http_info(notebook_id)

```ruby
begin
  # Get a notebook
  data, status_code, headers = api_instance.get_notebook_with_http_info(notebook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotebookResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->get_notebook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notebook_id** | **Integer** | Unique ID, assigned when you create the notebook. |  |

### Return type

[**NotebookResponse**](NotebookResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_notebooks

> <NotebooksResponse> list_notebooks(opts)

Get all notebooks

Get all notebooks. This can also be used to search for notebooks with a particular `query` in the notebook `name` or author `handle`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
opts = {
  author_handle: 'test@datadoghq.com', # String | Return notebooks created by the given `author_handle`.
  exclude_author_handle: 'test@datadoghq.com', # String | Return notebooks not created by the given `author_handle`.
  start: 0, # Integer | The index of the first notebook you want returned.
  count: 5, # Integer | The number of notebooks to be returned.
  sort_field: 'modified', # String | Sort by field `modified` or `name`.
  sort_dir: 'desc', # String | Sort by direction `asc` or `desc`.
  query: 'postmortem', # String | Return only notebooks with `query` string in notebook name or author handle.
  include_cells: false # Boolean | Value of `false` excludes the `cells` and global `time` for each notebook.
}

begin
  # Get all notebooks
  result = api_instance.list_notebooks(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->list_notebooks: #{e}"
end
```

#### Using the list_notebooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotebooksResponse>, Integer, Hash)> list_notebooks_with_http_info(opts)

```ruby
begin
  # Get all notebooks
  data, status_code, headers = api_instance.list_notebooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotebooksResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->list_notebooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_handle** | **String** | Return notebooks created by the given &#x60;author_handle&#x60;. | [optional] |
| **exclude_author_handle** | **String** | Return notebooks not created by the given &#x60;author_handle&#x60;. | [optional] |
| **start** | **Integer** | The index of the first notebook you want returned. | [optional] |
| **count** | **Integer** | The number of notebooks to be returned. | [optional] |
| **sort_field** | **String** | Sort by field &#x60;modified&#x60; or &#x60;name&#x60;. | [optional][default to &#39;modified&#39;] |
| **sort_dir** | **String** | Sort by direction &#x60;asc&#x60; or &#x60;desc&#x60;. | [optional][default to &#39;desc&#39;] |
| **query** | **String** | Return only notebooks with &#x60;query&#x60; string in notebook name or author handle. | [optional] |
| **include_cells** | **Boolean** | Value of &#x60;false&#x60; excludes the &#x60;cells&#x60; and global &#x60;time&#x60; for each notebook. | [optional][default to true] |

### Return type

[**NotebooksResponse**](NotebooksResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_notebook

> <NotebookResponse> update_notebook(notebook_id, body)

Update a notebook

Update a notebook using the specified ID.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
notebook_id = 789 # Integer | Unique ID, assigned when you create the notebook.
body = DatadogAPIClient::V1::NotebookUpdateRequest.new({data: DatadogAPIClient::V1::NotebookUpdateData.new({attributes: DatadogAPIClient::V1::NotebookUpdateDataAttributes.new({cells: [DatadogAPIClient::V1::NotebookCellCreateRequest.new({attributes: DatadogAPIClient::V1::NotebookDistributionCellAttributes.new({definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({requests: [DatadogAPIClient::V1::DistributionWidgetRequest.new], type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION})}), type: DatadogAPIClient::V1::NotebookCellResourceType::NOTEBOOK_CELLS})], name: 'Example Notebook', time: DatadogAPIClient::V1::NotebookAbsoluteTime.new({_end: Time.parse('2021-02-24T20:18:28Z'), start: Time.parse('2021-02-24T19:18:28Z')})}), type: DatadogAPIClient::V1::NotebookResourceType::NOTEBOOKS})}) # NotebookUpdateRequest | Update notebook request body.

begin
  # Update a notebook
  result = api_instance.update_notebook(notebook_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->update_notebook: #{e}"
end
```

#### Using the update_notebook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotebookResponse>, Integer, Hash)> update_notebook_with_http_info(notebook_id, body)

```ruby
begin
  # Update a notebook
  data, status_code, headers = api_instance.update_notebook_with_http_info(notebook_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotebookResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->update_notebook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notebook_id** | **Integer** | Unique ID, assigned when you create the notebook. |  |
| **body** | [**NotebookUpdateRequest**](NotebookUpdateRequest.md) | Update notebook request body. |  |

### Return type

[**NotebookResponse**](NotebookResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


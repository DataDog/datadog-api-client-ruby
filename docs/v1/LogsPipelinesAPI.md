# DatadogAPIClient::V1::LogsPipelinesAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_logs_pipeline**](LogsPipelinesAPI.md#create_logs_pipeline) | **POST** /api/v1/logs/config/pipelines | Create a pipeline |
| [**delete_logs_pipeline**](LogsPipelinesAPI.md#delete_logs_pipeline) | **DELETE** /api/v1/logs/config/pipelines/{pipeline_id} | Delete a pipeline |
| [**get_logs_pipeline**](LogsPipelinesAPI.md#get_logs_pipeline) | **GET** /api/v1/logs/config/pipelines/{pipeline_id} | Get a pipeline |
| [**get_logs_pipeline_order**](LogsPipelinesAPI.md#get_logs_pipeline_order) | **GET** /api/v1/logs/config/pipeline-order | Get pipeline order |
| [**list_logs_pipelines**](LogsPipelinesAPI.md#list_logs_pipelines) | **GET** /api/v1/logs/config/pipelines | Get all pipelines |
| [**update_logs_pipeline**](LogsPipelinesAPI.md#update_logs_pipeline) | **PUT** /api/v1/logs/config/pipelines/{pipeline_id} | Update a pipeline |
| [**update_logs_pipeline_order**](LogsPipelinesAPI.md#update_logs_pipeline_order) | **PUT** /api/v1/logs/config/pipeline-order | Update pipeline order |


## create_logs_pipeline

> <LogsPipeline> create_logs_pipeline(body)

Create a pipeline

Create a pipeline in your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
body = DatadogAPIClient::V1::LogsPipeline.new({name: 'name_example'}) # LogsPipeline | Definition of the new pipeline.

begin
  # Create a pipeline
  result = api_instance.create_logs_pipeline(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->create_logs_pipeline: #{e}"
end
```

#### Using the create_logs_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsPipeline>, Integer, Hash)> create_logs_pipeline_with_http_info(body)

```ruby
begin
  # Create a pipeline
  data, status_code, headers = api_instance.create_logs_pipeline_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsPipeline>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->create_logs_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsPipeline**](LogsPipeline.md) | Definition of the new pipeline. |  |

### Return type

[**LogsPipeline**](LogsPipeline.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_logs_pipeline

> delete_logs_pipeline(pipeline_id)

Delete a pipeline

Delete a given pipeline from your organization. This endpoint takes no JSON arguments.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
pipeline_id = 'pipeline_id_example' # String | ID of the pipeline to delete.

begin
  # Delete a pipeline
  api_instance.delete_logs_pipeline(pipeline_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->delete_logs_pipeline: #{e}"
end
```

#### Using the delete_logs_pipeline_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_logs_pipeline_with_http_info(pipeline_id)

```ruby
begin
  # Delete a pipeline
  data, status_code, headers = api_instance.delete_logs_pipeline_with_http_info(pipeline_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->delete_logs_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | ID of the pipeline to delete. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logs_pipeline

> <LogsPipeline> get_logs_pipeline(pipeline_id)

Get a pipeline

Get a specific pipeline from your organization. This endpoint takes no JSON arguments.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
pipeline_id = 'pipeline_id_example' # String | ID of the pipeline to get.

begin
  # Get a pipeline
  result = api_instance.get_logs_pipeline(pipeline_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->get_logs_pipeline: #{e}"
end
```

#### Using the get_logs_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsPipeline>, Integer, Hash)> get_logs_pipeline_with_http_info(pipeline_id)

```ruby
begin
  # Get a pipeline
  data, status_code, headers = api_instance.get_logs_pipeline_with_http_info(pipeline_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsPipeline>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->get_logs_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | ID of the pipeline to get. |  |

### Return type

[**LogsPipeline**](LogsPipeline.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logs_pipeline_order

> <LogsPipelinesOrder> get_logs_pipeline_order

Get pipeline order

Get the current order of your pipelines. This endpoint takes no JSON arguments.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

begin
  # Get pipeline order
  result = api_instance.get_logs_pipeline_order
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->get_logs_pipeline_order: #{e}"
end
```

#### Using the get_logs_pipeline_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsPipelinesOrder>, Integer, Hash)> get_logs_pipeline_order_with_http_info

```ruby
begin
  # Get pipeline order
  data, status_code, headers = api_instance.get_logs_pipeline_order_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsPipelinesOrder>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->get_logs_pipeline_order_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsPipelinesOrder**](LogsPipelinesOrder.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_logs_pipelines

> <Array<LogsPipeline>> list_logs_pipelines

Get all pipelines

Get all pipelines from your organization. This endpoint takes no JSON arguments.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

begin
  # Get all pipelines
  result = api_instance.list_logs_pipelines
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->list_logs_pipelines: #{e}"
end
```

#### Using the list_logs_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LogsPipeline>>, Integer, Hash)> list_logs_pipelines_with_http_info

```ruby
begin
  # Get all pipelines
  data, status_code, headers = api_instance.list_logs_pipelines_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LogsPipeline>>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->list_logs_pipelines_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;LogsPipeline&gt;**](LogsPipeline.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_logs_pipeline

> <LogsPipeline> update_logs_pipeline(pipeline_id, body)

Update a pipeline

Update a given pipeline configuration to change it’s processors or their order.  **Note**: Using this method updates your pipeline configuration by **replacing** your current configuration with the new one sent to your Datadog organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
pipeline_id = 'pipeline_id_example' # String | ID of the pipeline to delete.
body = DatadogAPIClient::V1::LogsPipeline.new({name: 'name_example'}) # LogsPipeline | New definition of the pipeline.

begin
  # Update a pipeline
  result = api_instance.update_logs_pipeline(pipeline_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->update_logs_pipeline: #{e}"
end
```

#### Using the update_logs_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsPipeline>, Integer, Hash)> update_logs_pipeline_with_http_info(pipeline_id, body)

```ruby
begin
  # Update a pipeline
  data, status_code, headers = api_instance.update_logs_pipeline_with_http_info(pipeline_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsPipeline>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->update_logs_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | ID of the pipeline to delete. |  |
| **body** | [**LogsPipeline**](LogsPipeline.md) | New definition of the pipeline. |  |

### Return type

[**LogsPipeline**](LogsPipeline.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_logs_pipeline_order

> <LogsPipelinesOrder> update_logs_pipeline_order(body)

Update pipeline order

Update the order of your pipelines. Since logs are processed sequentially, reordering a pipeline may change the structure and content of the data processed by other pipelines and their processors.  **Note**: Using the `PUT` method updates your pipeline order by replacing your current order with the new one sent to your Datadog organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
body = DatadogAPIClient::V1::LogsPipelinesOrder.new({pipeline_ids: ['pipeline_ids_example']}) # LogsPipelinesOrder | Object containing the new ordered list of pipeline IDs.

begin
  # Update pipeline order
  result = api_instance.update_logs_pipeline_order(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->update_logs_pipeline_order: #{e}"
end
```

#### Using the update_logs_pipeline_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsPipelinesOrder>, Integer, Hash)> update_logs_pipeline_order_with_http_info(body)

```ruby
begin
  # Update pipeline order
  data, status_code, headers = api_instance.update_logs_pipeline_order_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsPipelinesOrder>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->update_logs_pipeline_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsPipelinesOrder**](LogsPipelinesOrder.md) | Object containing the new ordered list of pipeline IDs. |  |

### Return type

[**LogsPipelinesOrder**](LogsPipelinesOrder.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


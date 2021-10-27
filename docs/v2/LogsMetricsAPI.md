# DatadogAPIClient::V2::LogsMetricsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                         | HTTP request                                       | Description               |
| -------------------------------------------------------------- | -------------------------------------------------- | ------------------------- |
| [**create_logs_metric**](LogsMetricsAPI.md#create_logs_metric) | **POST** /api/v2/logs/config/metrics               | Create a log-based metric |
| [**delete_logs_metric**](LogsMetricsAPI.md#delete_logs_metric) | **DELETE** /api/v2/logs/config/metrics/{metric_id} | Delete a log-based metric |
| [**get_logs_metric**](LogsMetricsAPI.md#get_logs_metric)       | **GET** /api/v2/logs/config/metrics/{metric_id}    | Get a log-based metric    |
| [**list_logs_metrics**](LogsMetricsAPI.md#list_logs_metrics)   | **GET** /api/v2/logs/config/metrics                | Get all log-based metrics |
| [**update_logs_metric**](LogsMetricsAPI.md#update_logs_metric) | **PATCH** /api/v2/logs/config/metrics/{metric_id}  | Update a log-based metric |

## create_logs_metric

> <LogsMetricResponse> create_logs_metric(body)

Create a metric based on your ingested logs in your organization.
Returns the log-based metric object from the request body when the request is successful.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
body = DatadogAPIClient::V2::LogsMetricCreateRequest.new({data: DatadogAPIClient::V2::LogsMetricCreateData.new({attributes: DatadogAPIClient::V2::LogsMetricCreateAttributes.new({compute: DatadogAPIClient::V2::LogsMetricCompute.new({aggregation_type: DatadogAPIClient::V2::LogsMetricComputeAggregationType::COUNT})}), id: 'logs.page.load.count', type: DatadogAPIClient::V2::LogsMetricType::LOGS_METRICS})}) # LogsMetricCreateRequest | The definition of the new log-based metric.

begin
  # Create a log-based metric
  result = api_instance.create_logs_metric(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->create_logs_metric: #{e}"
end
```

#### Using the create_logs_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsMetricResponse>, Integer, Hash)> create_logs_metric_with_http_info(body)

```ruby
begin
  # Create a log-based metric
  data, status_code, headers = api_instance.create_logs_metric_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsMetricResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->create_logs_metric_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                      | Description                                 | Notes |
| -------- | --------------------------------------------------------- | ------------------------------------------- | ----- |
| **body** | [**LogsMetricCreateRequest**](LogsMetricCreateRequest.md) | The definition of the new log-based metric. |       |

### Return type

[**LogsMetricResponse**](LogsMetricResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_logs_metric

> delete_logs_metric(metric_id)

Delete a specific log-based metric from your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
metric_id = 'metric_id_example' # String | The name of the log-based metric.

begin
  # Delete a log-based metric
  api_instance.delete_logs_metric(metric_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->delete_logs_metric: #{e}"
end
```

#### Using the delete_logs_metric_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_logs_metric_with_http_info(metric_id)

```ruby
begin
  # Delete a log-based metric
  data, status_code, headers = api_instance.delete_logs_metric_with_http_info(metric_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->delete_logs_metric_with_http_info: #{e}"
end
```

### Parameters

| Name          | Type       | Description                       | Notes |
| ------------- | ---------- | --------------------------------- | ----- |
| **metric_id** | **String** | The name of the log-based metric. |       |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_logs_metric

> <LogsMetricResponse> get_logs_metric(metric_id)

Get a specific log-based metric from your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
metric_id = 'metric_id_example' # String | The name of the log-based metric.

begin
  # Get a log-based metric
  result = api_instance.get_logs_metric(metric_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->get_logs_metric: #{e}"
end
```

#### Using the get_logs_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsMetricResponse>, Integer, Hash)> get_logs_metric_with_http_info(metric_id)

```ruby
begin
  # Get a log-based metric
  data, status_code, headers = api_instance.get_logs_metric_with_http_info(metric_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsMetricResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->get_logs_metric_with_http_info: #{e}"
end
```

### Parameters

| Name          | Type       | Description                       | Notes |
| ------------- | ---------- | --------------------------------- | ----- |
| **metric_id** | **String** | The name of the log-based metric. |       |

### Return type

[**LogsMetricResponse**](LogsMetricResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_logs_metrics

> <LogsMetricsResponse> list_logs_metrics

Get the list of configured log-based metrics with their definitions.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new

begin
  # Get all log-based metrics
  result = api_instance.list_logs_metrics
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->list_logs_metrics: #{e}"
end
```

#### Using the list_logs_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsMetricsResponse>, Integer, Hash)> list_logs_metrics_with_http_info

```ruby
begin
  # Get all log-based metrics
  data, status_code, headers = api_instance.list_logs_metrics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsMetricsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->list_logs_metrics_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsMetricsResponse**](LogsMetricsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_logs_metric

> <LogsMetricResponse> update_logs_metric(metric_id, body)

Update a specific log-based metric from your organization.
Returns the log-based metric object from the request body when the request is successful.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
metric_id = 'metric_id_example' # String | The name of the log-based metric.
body = DatadogAPIClient::V2::LogsMetricUpdateRequest.new({data: DatadogAPIClient::V2::LogsMetricUpdateData.new({attributes: DatadogAPIClient::V2::LogsMetricUpdateAttributes.new, type: DatadogAPIClient::V2::LogsMetricType::LOGS_METRICS})}) # LogsMetricUpdateRequest | New definition of the log-based metric.

begin
  # Update a log-based metric
  result = api_instance.update_logs_metric(metric_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->update_logs_metric: #{e}"
end
```

#### Using the update_logs_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsMetricResponse>, Integer, Hash)> update_logs_metric_with_http_info(metric_id, body)

```ruby
begin
  # Update a log-based metric
  data, status_code, headers = api_instance.update_logs_metric_with_http_info(metric_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsMetricResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->update_logs_metric_with_http_info: #{e}"
end
```

### Parameters

| Name          | Type                                                      | Description                             | Notes |
| ------------- | --------------------------------------------------------- | --------------------------------------- | ----- |
| **metric_id** | **String**                                                | The name of the log-based metric.       |       |
| **body**      | [**LogsMetricUpdateRequest**](LogsMetricUpdateRequest.md) | New definition of the log-based metric. |       |

### Return type

[**LogsMetricResponse**](LogsMetricResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

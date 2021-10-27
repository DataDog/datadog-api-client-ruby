# DatadogAPIClient::V2::MetricsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tag_configuration**](MetricsAPI.md#create_tag_configuration) | **POST** /api/v2/metrics/{metric_name}/tags | Create a tag configuration |
| [**delete_tag_configuration**](MetricsAPI.md#delete_tag_configuration) | **DELETE** /api/v2/metrics/{metric_name}/tags | Delete a tag configuration |
| [**list_tag_configuration_by_name**](MetricsAPI.md#list_tag_configuration_by_name) | **GET** /api/v2/metrics/{metric_name}/tags | List tag configuration by name |
| [**list_tag_configurations**](MetricsAPI.md#list_tag_configurations) | **GET** /api/v2/metrics | List tag configurations |
| [**list_tags_by_metric_name**](MetricsAPI.md#list_tags_by_metric_name) | **GET** /api/v2/metrics/{metric_name}/all-tags | List tags by metric name |
| [**list_volumes_by_metric_name**](MetricsAPI.md#list_volumes_by_metric_name) | **GET** /api/v2/metrics/{metric_name}/volumes | List distinct metric volumes by metric name |
| [**update_tag_configuration**](MetricsAPI.md#update_tag_configuration) | **PATCH** /api/v2/metrics/{metric_name}/tags | Update a tag configuration |


## create_tag_configuration

> <MetricTagConfigurationResponse> create_tag_configuration(metric_name, body)

Create and define a list of queryable tag keys for an existing count/gauge/rate/distribution metric.
Optionally, include percentile aggregations on any distribution metric or configure custom aggregations
on any count, rate, or gauge metric.
Can only be used with application keys of users with the `Manage Tags for Metrics` permission.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_tag_configuration] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.
body = DatadogAPIClient::V2::MetricTagConfigurationCreateRequest.new({data: DatadogAPIClient::V2::MetricTagConfigurationCreateData.new({id: 'test.metric.latency', type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS})}) # MetricTagConfigurationCreateRequest | 

begin
  # Create a tag configuration
  result = api_instance.create_tag_configuration(metric_name, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->create_tag_configuration: #{e}"
end
```

#### Using the create_tag_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricTagConfigurationResponse>, Integer, Hash)> create_tag_configuration_with_http_info(metric_name, body)

```ruby
begin
  # Create a tag configuration
  data, status_code, headers = api_instance.create_tag_configuration_with_http_info(metric_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricTagConfigurationResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->create_tag_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | The name of the metric. |  |
| **body** | [**MetricTagConfigurationCreateRequest**](MetricTagConfigurationCreateRequest.md) |  |  |

### Return type

[**MetricTagConfigurationResponse**](MetricTagConfigurationResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag_configuration

> delete_tag_configuration(metric_name)

Deletes a metric's tag configuration. Can only be used with application
keys from users with the `Manage Tags for Metrics` permission.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_tag_configuration] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # Delete a tag configuration
  api_instance.delete_tag_configuration(metric_name)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->delete_tag_configuration: #{e}"
end
```

#### Using the delete_tag_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tag_configuration_with_http_info(metric_name)

```ruby
begin
  # Delete a tag configuration
  data, status_code, headers = api_instance.delete_tag_configuration_with_http_info(metric_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->delete_tag_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | The name of the metric. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tag_configuration_by_name

> <MetricTagConfigurationResponse> list_tag_configuration_by_name(metric_name)

Returns the tag configuration for the given metric name.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_tag_configuration_by_name] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # List tag configuration by name
  result = api_instance.list_tag_configuration_by_name(metric_name)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tag_configuration_by_name: #{e}"
end
```

#### Using the list_tag_configuration_by_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricTagConfigurationResponse>, Integer, Hash)> list_tag_configuration_by_name_with_http_info(metric_name)

```ruby
begin
  # List tag configuration by name
  data, status_code, headers = api_instance.list_tag_configuration_by_name_with_http_info(metric_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricTagConfigurationResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tag_configuration_by_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | The name of the metric. |  |

### Return type

[**MetricTagConfigurationResponse**](MetricTagConfigurationResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tag_configurations

> <MetricsAndMetricTagConfigurationsResponse> list_tag_configurations(opts)

Returns all configured count/gauge/rate/distribution metric names
(with additional filters if specified).

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_tag_configurations] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_configured: true, # Boolean | Filter metrics that have configured tags.
  filter_tags_configured: 'app', # String | Filter tag configurations by configured tags.
  filter_metric_type: DatadogAPIClient::V2::MetricTagConfigurationMetricTypes::GAUGE, # MetricTagConfigurationMetricTypes | Filter tag configurations by metric type.
  filter_include_percentiles: true, # Boolean | Filter distributions with additional percentile aggregations enabled or disabled.
  filter_tags: 'env IN (staging,test) AND service:web', # String | Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters.
  window_seconds: 3600 # Integer | The number of seconds of look back (from now) to apply to a filter[tag] query. Defaults value is 3600 (1 hour), maximum value is 172,800 (2 days).
}

begin
  # List tag configurations
  result = api_instance.list_tag_configurations(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tag_configurations: #{e}"
end
```

#### Using the list_tag_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricsAndMetricTagConfigurationsResponse>, Integer, Hash)> list_tag_configurations_with_http_info(opts)

```ruby
begin
  # List tag configurations
  data, status_code, headers = api_instance.list_tag_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricsAndMetricTagConfigurationsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tag_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_configured** | **Boolean** | Filter metrics that have configured tags. | [optional] |
| **filter_tags_configured** | **String** | Filter tag configurations by configured tags. | [optional] |
| **filter_metric_type** | **MetricTagConfigurationMetricTypes** | Filter tag configurations by metric type. | [optional][default to &#39;gauge&#39;] |
| **filter_include_percentiles** | **Boolean** | Filter distributions with additional percentile aggregations enabled or disabled. | [optional] |
| **filter_tags** | **String** | Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters. | [optional] |
| **window_seconds** | **Integer** | The number of seconds of look back (from now) to apply to a filter[tag] query. Defaults value is 3600 (1 hour), maximum value is 172,800 (2 days). | [optional] |

### Return type

[**MetricsAndMetricTagConfigurationsResponse**](MetricsAndMetricTagConfigurationsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tags_by_metric_name

> <MetricAllTagsResponse> list_tags_by_metric_name(metric_name)

View indexed tag key-value pairs for a given metric name.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # List tags by metric name
  result = api_instance.list_tags_by_metric_name(metric_name)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tags_by_metric_name: #{e}"
end
```

#### Using the list_tags_by_metric_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricAllTagsResponse>, Integer, Hash)> list_tags_by_metric_name_with_http_info(metric_name)

```ruby
begin
  # List tags by metric name
  data, status_code, headers = api_instance.list_tags_by_metric_name_with_http_info(metric_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricAllTagsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tags_by_metric_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | The name of the metric. |  |

### Return type

[**MetricAllTagsResponse**](MetricAllTagsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_volumes_by_metric_name

> <MetricVolumesResponse> list_volumes_by_metric_name(metric_name)

View distinct metrics volumes for the given metric name.

Custom distribution metrics will return both ingested and indexed custom metric volumes.
For Metrics without Limits&trade; beta customers, all metrics will return both ingested/indexed volumes.
Custom metrics generated in-app from other products will return `null` for ingested volumes.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # List distinct metric volumes by metric name
  result = api_instance.list_volumes_by_metric_name(metric_name)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_volumes_by_metric_name: #{e}"
end
```

#### Using the list_volumes_by_metric_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricVolumesResponse>, Integer, Hash)> list_volumes_by_metric_name_with_http_info(metric_name)

```ruby
begin
  # List distinct metric volumes by metric name
  data, status_code, headers = api_instance.list_volumes_by_metric_name_with_http_info(metric_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricVolumesResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_volumes_by_metric_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | The name of the metric. |  |

### Return type

[**MetricVolumesResponse**](MetricVolumesResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tag_configuration

> <MetricTagConfigurationResponse> update_tag_configuration(metric_name, body)

Update the tag configuration of a metric or percentile aggregations of a distribution metric or custom aggregations
of a count, rate, or gauge metric.
Can only be used with application keys from users with the `Manage Tags for Metrics` permission.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:update_tag_configuration] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.
body = DatadogAPIClient::V2::MetricTagConfigurationUpdateRequest.new({data: DatadogAPIClient::V2::MetricTagConfigurationUpdateData.new({id: 'test.metric.latency', type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS})}) # MetricTagConfigurationUpdateRequest | 

begin
  # Update a tag configuration
  result = api_instance.update_tag_configuration(metric_name, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->update_tag_configuration: #{e}"
end
```

#### Using the update_tag_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricTagConfigurationResponse>, Integer, Hash)> update_tag_configuration_with_http_info(metric_name, body)

```ruby
begin
  # Update a tag configuration
  data, status_code, headers = api_instance.update_tag_configuration_with_http_info(metric_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricTagConfigurationResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->update_tag_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | The name of the metric. |  |
| **body** | [**MetricTagConfigurationUpdateRequest**](MetricTagConfigurationUpdateRequest.md) |  |  |

### Return type

[**MetricTagConfigurationResponse**](MetricTagConfigurationResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


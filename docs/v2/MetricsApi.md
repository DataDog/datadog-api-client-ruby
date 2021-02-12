# DatadogAPIClient::V2::MetricsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tag_configuration**](MetricsApi.md#create_tag_configuration) | **POST** /api/v2/metrics/{metric_name}/tags | Create a Tag Configuration |
| [**delete_tag_configuration**](MetricsApi.md#delete_tag_configuration) | **DELETE** /api/v2/metrics/{metric_name}/tags | Delete a Tag Configuration |
| [**list_tag_configuration_by_name**](MetricsApi.md#list_tag_configuration_by_name) | **GET** /api/v2/metrics/{metric_name}/tags | List Tag Configuration by Name |
| [**list_tag_configurations**](MetricsApi.md#list_tag_configurations) | **GET** /api/v2/metrics | List Tag Configurations |
| [**update_tag_configuration**](MetricsApi.md#update_tag_configuration) | **PATCH** /api/v2/metrics/{metric_name}/tags | Update a Tag Configuration |


## create_tag_configuration

> <MetricTagConfigurationResponse> create_tag_configuration(metric_name, body)

Create a Tag Configuration

Create and define a list of queryable tag keys for a count/gauge/rate/distribution metric. Can only be used with application keys of users with the `Manage Tags for Metrics` permission.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'

DatadogAPIClient::V2.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]

  config.unstable_operations[:create_tag_configuration] = true
end

api_instance = DatadogAPIClient::V2::MetricsApi.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.
body = DatadogAPIClient::V2::MetricTagConfigurationCreateRequest.new({data: DatadogAPIClient::V2::MetricTagConfigurationCreateData.new({id: 'test.metric.latency', type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS})}) # MetricTagConfigurationCreateRequest | 

begin
  # Create a Tag Configuration
  result = api_instance.create_tag_configuration(metric_name, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->create_tag_configuration: #{e}"
end
```

#### Using the create_tag_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricTagConfigurationResponse>, Integer, Hash)> create_tag_configuration_with_http_info(metric_name, body)

```ruby
begin
  # Create a Tag Configuration
  data, status_code, headers = api_instance.create_tag_configuration_with_http_info(metric_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricTagConfigurationResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->create_tag_configuration_with_http_info: #{e}"
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

Delete a Tag Configuration

Deletes a metric's tag configuration. Can only be used with application keys from users with the `Manage Tags for Metrics` permission.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'

DatadogAPIClient::V2.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]

  config.unstable_operations[:delete_tag_configuration] = true
end

api_instance = DatadogAPIClient::V2::MetricsApi.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # Delete a Tag Configuration
  api_instance.delete_tag_configuration(metric_name)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->delete_tag_configuration: #{e}"
end
```

#### Using the delete_tag_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tag_configuration_with_http_info(metric_name)

```ruby
begin
  # Delete a Tag Configuration
  data, status_code, headers = api_instance.delete_tag_configuration_with_http_info(metric_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->delete_tag_configuration_with_http_info: #{e}"
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

List Tag Configuration by Name

Returns the tag configuration for the given metric name.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'

DatadogAPIClient::V2.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]

  config.unstable_operations[:list_tag_configuration_by_name] = true
end

api_instance = DatadogAPIClient::V2::MetricsApi.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # List Tag Configuration by Name
  result = api_instance.list_tag_configuration_by_name(metric_name)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->list_tag_configuration_by_name: #{e}"
end
```

#### Using the list_tag_configuration_by_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricTagConfigurationResponse>, Integer, Hash)> list_tag_configuration_by_name_with_http_info(metric_name)

```ruby
begin
  # List Tag Configuration by Name
  data, status_code, headers = api_instance.list_tag_configuration_by_name_with_http_info(metric_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricTagConfigurationResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->list_tag_configuration_by_name_with_http_info: #{e}"
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

List Tag Configurations

Returns all configured count/gauge/rate/distribution metric names (with additional filters if specified).

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'

DatadogAPIClient::V2.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]

  config.unstable_operations[:list_tag_configurations] = true
end

api_instance = DatadogAPIClient::V2::MetricsApi.new
opts = {
  filter_configured: true, # Boolean | Filter metrics that have configured tags.
  filter_tags_configured: 'app', # String | Filter tag configurations by configured tags.
  filter_metric_type: DatadogAPIClient::V2::MetricTagConfigurationMetricTypes::GAUGE, # MetricTagConfigurationMetricTypes | Filter tag configurations by metric type.
  filter_include_percentiles: true # Boolean | Filter distributions with additional percentile aggregations enabled or disabled.
}

begin
  # List Tag Configurations
  result = api_instance.list_tag_configurations(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->list_tag_configurations: #{e}"
end
```

#### Using the list_tag_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricsAndMetricTagConfigurationsResponse>, Integer, Hash)> list_tag_configurations_with_http_info(opts)

```ruby
begin
  # List Tag Configurations
  data, status_code, headers = api_instance.list_tag_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricsAndMetricTagConfigurationsResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->list_tag_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_configured** | **Boolean** | Filter metrics that have configured tags. | [optional] |
| **filter_tags_configured** | **String** | Filter tag configurations by configured tags. | [optional] |
| **filter_metric_type** | **MetricTagConfigurationMetricTypes** | Filter tag configurations by metric type. | [optional][default to &#39;gauge&#39;] |
| **filter_include_percentiles** | **Boolean** | Filter distributions with additional percentile aggregations enabled or disabled. | [optional] |

### Return type

[**MetricsAndMetricTagConfigurationsResponse**](MetricsAndMetricTagConfigurationsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tag_configuration

> <MetricTagConfigurationResponse> update_tag_configuration(metric_name, body)

Update a Tag Configuration

Update the tag configuration of a metric. Can only be used with application keys from users with the `Manage Tags for Metrics` permission.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v2'

DatadogAPIClient::V2.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]

  config.unstable_operations[:update_tag_configuration] = true
end

api_instance = DatadogAPIClient::V2::MetricsApi.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.
body = DatadogAPIClient::V2::MetricTagConfigurationUpdateRequest.new({data: DatadogAPIClient::V2::MetricTagConfigurationUpdateData.new({id: 'test.metric.latency', type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS})}) # MetricTagConfigurationUpdateRequest | 

begin
  # Update a Tag Configuration
  result = api_instance.update_tag_configuration(metric_name, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->update_tag_configuration: #{e}"
end
```

#### Using the update_tag_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricTagConfigurationResponse>, Integer, Hash)> update_tag_configuration_with_http_info(metric_name, body)

```ruby
begin
  # Update a Tag Configuration
  data, status_code, headers = api_instance.update_tag_configuration_with_http_info(metric_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricTagConfigurationResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling MetricsApi->update_tag_configuration_with_http_info: #{e}"
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


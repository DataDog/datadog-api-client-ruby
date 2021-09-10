# DatadogAPIClient::V1::MetricsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_metric_metadata**](MetricsAPI.md#get_metric_metadata) | **GET** /api/v1/metrics/{metric_name} | Get metric metadata |
| [**list_active_metrics**](MetricsAPI.md#list_active_metrics) | **GET** /api/v1/metrics | Get active metrics list |
| [**list_metrics**](MetricsAPI.md#list_metrics) | **GET** /api/v1/search | Search metrics |
| [**query_metrics**](MetricsAPI.md#query_metrics) | **GET** /api/v1/query | Query timeseries points |
| [**submit_metrics**](MetricsAPI.md#submit_metrics) | **POST** /api/v1/series | Submit metrics |
| [**update_metric_metadata**](MetricsAPI.md#update_metric_metadata) | **PUT** /api/v1/metrics/{metric_name} | Edit metric metadata |


## get_metric_metadata

> <MetricMetadata> get_metric_metadata(metric_name)

Get metadata about a specific metric.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MetricsAPI.new
metric_name = 'metric_name_example' # String | Name of the metric for which to get metadata.

begin
  # Get metric metadata
  result = api_instance.get_metric_metadata(metric_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->get_metric_metadata: #{e}"
end
```

#### Using the get_metric_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricMetadata>, Integer, Hash)> get_metric_metadata_with_http_info(metric_name)

```ruby
begin
  # Get metric metadata
  data, status_code, headers = api_instance.get_metric_metadata_with_http_info(metric_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricMetadata>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->get_metric_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | Name of the metric for which to get metadata. |  |

### Return type

[**MetricMetadata**](MetricMetadata.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_active_metrics

> <MetricsListResponse> list_active_metrics(from, opts)

Get the list of actively reporting metrics from a given time until now.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MetricsAPI.new
from = 789 # Integer | Seconds since the Unix epoch.
opts = {
  host: 'host_example', # String | Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag.
  tag_filter: 'env IN (staging,test) AND service:web' # String | Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters.
}

begin
  # Get active metrics list
  result = api_instance.list_active_metrics(from, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->list_active_metrics: #{e}"
end
```

#### Using the list_active_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricsListResponse>, Integer, Hash)> list_active_metrics_with_http_info(from, opts)

```ruby
begin
  # Get active metrics list
  data, status_code, headers = api_instance.list_active_metrics_with_http_info(from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricsListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->list_active_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | Seconds since the Unix epoch. |  |
| **host** | **String** | Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag. | [optional] |
| **tag_filter** | **String** | Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters. | [optional] |

### Return type

[**MetricsListResponse**](MetricsListResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_metrics

> <MetricSearchResponse> list_metrics(q)

Search for metrics from the last 24 hours in Datadog.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MetricsAPI.new
q = 'q_example' # String | Query string to search metrics upon. Must be prefixed with `metrics:`.

begin
  # Search metrics
  result = api_instance.list_metrics(q)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->list_metrics: #{e}"
end
```

#### Using the list_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricSearchResponse>, Integer, Hash)> list_metrics_with_http_info(q)

```ruby
begin
  # Search metrics
  data, status_code, headers = api_instance.list_metrics_with_http_info(q)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricSearchResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->list_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Query string to search metrics upon. Must be prefixed with &#x60;metrics:&#x60;. |  |

### Return type

[**MetricSearchResponse**](MetricSearchResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_metrics

> <MetricsQueryResponse> query_metrics(from, to, query)

Query timeseries points.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MetricsAPI.new
from = 789 # Integer | Start of the queried time period, seconds since the Unix epoch.
to = 789 # Integer | End of the queried time period, seconds since the Unix epoch.
query = 'query_example' # String | Query string.

begin
  # Query timeseries points
  result = api_instance.query_metrics(from, to, query)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->query_metrics: #{e}"
end
```

#### Using the query_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricsQueryResponse>, Integer, Hash)> query_metrics_with_http_info(from, to, query)

```ruby
begin
  # Query timeseries points
  data, status_code, headers = api_instance.query_metrics_with_http_info(from, to, query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricsQueryResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->query_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | Start of the queried time period, seconds since the Unix epoch. |  |
| **to** | **Integer** | End of the queried time period, seconds since the Unix epoch. |  |
| **query** | **String** | Query string. |  |

### Return type

[**MetricsQueryResponse**](MetricsQueryResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_metrics

> <IntakePayloadAccepted> submit_metrics(body)

The metrics end-point allows you to post time-series data that can be graphed on Datadog’s dashboards.
The maximum payload size is 3.2 megabytes (3200000 bytes). Compressed payloads must have a decompressed size of less than 62 megabytes (62914560 bytes).

If you’re submitting metrics directly to the Datadog API without using DogStatsD, expect:

- 64 bits for the timestamp
- 32 bits for the value
- 20 bytes for the metric names
- 50 bytes for the timeseries
- The full payload is approximately 100 bytes. However, with the DogStatsD API,
compression is applied, which reduces the payload size.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MetricsAPI.new
body = DatadogAPIClient::V1::MetricsPayload.new({series: [DatadogAPIClient::V1::Series.new({metric: 'system.load.1', points: [[3.56]]})]}) # MetricsPayload | 

begin
  # Submit metrics
  result = api_instance.submit_metrics(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->submit_metrics: #{e}"
end
```

#### Using the submit_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntakePayloadAccepted>, Integer, Hash)> submit_metrics_with_http_info(body)

```ruby
begin
  # Submit metrics
  data, status_code, headers = api_instance.submit_metrics_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntakePayloadAccepted>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->submit_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MetricsPayload**](MetricsPayload.md) |  |  |

### Return type

[**IntakePayloadAccepted**](IntakePayloadAccepted.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_metric_metadata

> <MetricMetadata> update_metric_metadata(metric_name, body)

Edit metadata of a specific metric. Find out more about [supported types](https://docs.datadoghq.com/developers/metrics).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MetricsAPI.new
metric_name = 'metric_name_example' # String | Name of the metric for which to edit metadata.
body = DatadogAPIClient::V1::MetricMetadata.new # MetricMetadata | New metadata.

begin
  # Edit metric metadata
  result = api_instance.update_metric_metadata(metric_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->update_metric_metadata: #{e}"
end
```

#### Using the update_metric_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricMetadata>, Integer, Hash)> update_metric_metadata_with_http_info(metric_name, body)

```ruby
begin
  # Edit metric metadata
  data, status_code, headers = api_instance.update_metric_metadata_with_http_info(metric_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricMetadata>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->update_metric_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | Name of the metric for which to edit metadata. |  |
| **body** | [**MetricMetadata**](MetricMetadata.md) | New metadata. |  |

### Return type

[**MetricMetadata**](MetricMetadata.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


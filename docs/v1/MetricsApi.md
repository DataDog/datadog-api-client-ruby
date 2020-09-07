# DatadogAPIClient::V1::MetricsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_metric_metadata**](MetricsApi.md#get_metric_metadata) | **GET** /api/v1/metrics/{metric_name} | Get metric metadata
[**list_active_metrics**](MetricsApi.md#list_active_metrics) | **GET** /api/v1/metrics | Get active metrics list
[**list_metrics**](MetricsApi.md#list_metrics) | **GET** /api/v1/search | Search metrics
[**query_metrics**](MetricsApi.md#query_metrics) | **GET** /api/v1/query | Query timeseries points
[**update_metric_metadata**](MetricsApi.md#update_metric_metadata) | **PUT** /api/v1/metrics/{metric_name} | Edit metric metadata



## get_metric_metadata

> MetricMetadata get_metric_metadata(metric_name)

Get metric metadata

Get metadata about a specific metric.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['DD-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-API-KEY'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['DD-APPLICATION-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-APPLICATION-KEY'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
metric_name = 'metric_name_example' # String | Name of the metric for which to get metadata.

begin
  #Get metric metadata
  result = api_instance.get_metric_metadata(metric_name)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling MetricsApi->get_metric_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_name** | **String**| Name of the metric for which to get metadata. | 

### Return type

[**MetricMetadata**](MetricMetadata.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_active_metrics

> MetricsListResponse list_active_metrics(from, opts)

Get active metrics list

Get the list of actively reporting metrics from a given time until now.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['DD-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-API-KEY'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['DD-APPLICATION-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-APPLICATION-KEY'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
from = 56 # Integer | Seconds since the Unix epoch.
opts = {
  host: 'host_example' # String | Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag.
}

begin
  #Get active metrics list
  result = api_instance.list_active_metrics(from, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling MetricsApi->list_active_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Integer**| Seconds since the Unix epoch. | 
 **host** | **String**| Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag. | [optional] 

### Return type

[**MetricsListResponse**](MetricsListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_metrics

> MetricSearchResponse list_metrics(q)

Search metrics

Search for metrics from the last 24 hours in Datadog.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['DD-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-API-KEY'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['DD-APPLICATION-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-APPLICATION-KEY'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
q = 'q_example' # String | Query string to search metrics upon. Must be prefixed with `metrics:`.

begin
  #Search metrics
  result = api_instance.list_metrics(q)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling MetricsApi->list_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string to search metrics upon. Must be prefixed with &#x60;metrics:&#x60;. | 

### Return type

[**MetricSearchResponse**](MetricSearchResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_metrics

> MetricsQueryResponse query_metrics(from, to, query)

Query timeseries points

Query timeseries points.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['DD-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-API-KEY'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['DD-APPLICATION-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-APPLICATION-KEY'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
from = 56 # Integer | Start of the queried time period, seconds since the Unix epoch.
to = 56 # Integer | End of the queried time period, seconds since the Unix epoch.
query = 'query_example' # String | Query string.

begin
  #Query timeseries points
  result = api_instance.query_metrics(from, to, query)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling MetricsApi->query_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Integer**| Start of the queried time period, seconds since the Unix epoch. | 
 **to** | **Integer**| End of the queried time period, seconds since the Unix epoch. | 
 **query** | **String**| Query string. | 

### Return type

[**MetricsQueryResponse**](MetricsQueryResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_metric_metadata

> MetricMetadata update_metric_metadata(metric_name, body)

Edit metric metadata

Edit metadata of a specific metric. Find out more about [supported types](https://docs.datadoghq.com/developers/metrics).

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['DD-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-API-KEY'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['DD-APPLICATION-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['DD-APPLICATION-KEY'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
metric_name = 'metric_name_example' # String | Name of the metric for which to edit metadata.
body = DatadogAPIClient::V1::MetricMetadata.new # MetricMetadata | New metadata.

begin
  #Edit metric metadata
  result = api_instance.update_metric_metadata(metric_name, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling MetricsApi->update_metric_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_name** | **String**| Name of the metric for which to edit metadata. | 
 **body** | [**MetricMetadata**](MetricMetadata.md)| New metadata. | 

### Return type

[**MetricMetadata**](MetricMetadata.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


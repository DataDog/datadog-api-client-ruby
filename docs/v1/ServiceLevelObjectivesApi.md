# DatadogAPIClient::V1::ServiceLevelObjectivesApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_can_delete_slo**](ServiceLevelObjectivesApi.md#check_can_delete_slo) | **GET** /api/v1/slo/can_delete | Check if SLOs can be safely deleted |
| [**create_slo**](ServiceLevelObjectivesApi.md#create_slo) | **POST** /api/v1/slo | Create a SLO object |
| [**delete_slo**](ServiceLevelObjectivesApi.md#delete_slo) | **DELETE** /api/v1/slo/{slo_id} | Delete a SLO |
| [**delete_slo_timeframe_in_bulk**](ServiceLevelObjectivesApi.md#delete_slo_timeframe_in_bulk) | **POST** /api/v1/slo/bulk_delete | Bulk Delete SLO Timeframes |
| [**get_slo**](ServiceLevelObjectivesApi.md#get_slo) | **GET** /api/v1/slo/{slo_id} | Get a SLO&#39;s details |
| [**get_slo_history**](ServiceLevelObjectivesApi.md#get_slo_history) | **GET** /api/v1/slo/{slo_id}/history | Get an SLO&#39;s history |
| [**list_slos**](ServiceLevelObjectivesApi.md#list_slos) | **GET** /api/v1/slo | Get all SLOs |
| [**update_slo**](ServiceLevelObjectivesApi.md#update_slo) | **PUT** /api/v1/slo/{slo_id} | Update a SLO |


## check_can_delete_slo

> <CheckCanDeleteSLOResponse> check_can_delete_slo(ids)

Check if SLOs can be safely deleted

Check if a SLO can be safely deleted. For example, assure an SLO can be deleted without disrupting a dashboard.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesApi.new
ids = 'id1, id2, id3' # String | A comma separated list of the IDs of the service level objectives objects.

begin
  # Check if SLOs can be safely deleted
  result = api_instance.check_can_delete_slo(ids)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->check_can_delete_slo: #{e}"
end
```

#### Using the check_can_delete_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckCanDeleteSLOResponse>, Integer, Hash)> check_can_delete_slo_with_http_info(ids)

```ruby
begin
  # Check if SLOs can be safely deleted
  data, status_code, headers = api_instance.check_can_delete_slo_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckCanDeleteSLOResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->check_can_delete_slo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | A comma separated list of the IDs of the service level objectives objects. |  |

### Return type

[**CheckCanDeleteSLOResponse**](CheckCanDeleteSLOResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_slo

> <SLOListResponse> create_slo(body)

Create a SLO object

Create a service level objective object.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesApi.new
body = DatadogAPIClient::V1::ServiceLevelObjectiveRequest.new({name: 'name_example', thresholds: [DatadogAPIClient::V1::SLOThreshold.new({target: 0.0, timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS})], type: DatadogAPIClient::V1::SLOType::METRIC}) # ServiceLevelObjectiveRequest | Service level objective request object.

begin
  # Create a SLO object
  result = api_instance.create_slo(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->create_slo: #{e}"
end
```

#### Using the create_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOListResponse>, Integer, Hash)> create_slo_with_http_info(body)

```ruby
begin
  # Create a SLO object
  data, status_code, headers = api_instance.create_slo_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOListResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->create_slo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ServiceLevelObjectiveRequest**](ServiceLevelObjectiveRequest.md) | Service level objective request object. |  |

### Return type

[**SLOListResponse**](SLOListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_slo

> <SLODeleteResponse> delete_slo(slo_id, opts)

Delete a SLO

Permanently delete the specified service level objective object.  If an SLO is used in a dashboard, the `DELETE /v1/slo/` endpoint returns a 409 conflict error because the SLO is referenced in a dashboard.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesApi.new
slo_id = 'slo_id_example' # String | The ID of the service level objective.
opts = {
  force: 'force_example' # String | Delete the monitor even if it's referenced by other resources (e.g. SLO, composite monitor).
}

begin
  # Delete a SLO
  result = api_instance.delete_slo(slo_id, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->delete_slo: #{e}"
end
```

#### Using the delete_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLODeleteResponse>, Integer, Hash)> delete_slo_with_http_info(slo_id, opts)

```ruby
begin
  # Delete a SLO
  data, status_code, headers = api_instance.delete_slo_with_http_info(slo_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLODeleteResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->delete_slo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_id** | **String** | The ID of the service level objective. |  |
| **force** | **String** | Delete the monitor even if it&#39;s referenced by other resources (e.g. SLO, composite monitor). | [optional] |

### Return type

[**SLODeleteResponse**](SLODeleteResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_slo_timeframe_in_bulk

> <SLOBulkDeleteResponse> delete_slo_timeframe_in_bulk(body)

Bulk Delete SLO Timeframes

Delete (or partially delete) multiple service level objective objects.  This endpoint facilitates deletion of one or more thresholds for one or more service level objective objects. If all thresholds are deleted, the service level objective object is deleted as well.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesApi.new
body = { key: [DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS]} # Hash<String, Array<SLOTimeframe>> | Delete multiple service level objective objects request body.

begin
  # Bulk Delete SLO Timeframes
  result = api_instance.delete_slo_timeframe_in_bulk(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->delete_slo_timeframe_in_bulk: #{e}"
end
```

#### Using the delete_slo_timeframe_in_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOBulkDeleteResponse>, Integer, Hash)> delete_slo_timeframe_in_bulk_with_http_info(body)

```ruby
begin
  # Bulk Delete SLO Timeframes
  data, status_code, headers = api_instance.delete_slo_timeframe_in_bulk_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOBulkDeleteResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->delete_slo_timeframe_in_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Hash&lt;String,Array&lt;SLOTimeframe&gt;&gt;** | Delete multiple service level objective objects request body. |  |

### Return type

[**SLOBulkDeleteResponse**](SLOBulkDeleteResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_slo

> <SLOResponse> get_slo(slo_id)

Get a SLO's details

Get a service level objective object.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesApi.new
slo_id = 'slo_id_example' # String | The ID of the service level objective object.

begin
  # Get a SLO's details
  result = api_instance.get_slo(slo_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->get_slo: #{e}"
end
```

#### Using the get_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOResponse>, Integer, Hash)> get_slo_with_http_info(slo_id)

```ruby
begin
  # Get a SLO's details
  data, status_code, headers = api_instance.get_slo_with_http_info(slo_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->get_slo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_id** | **String** | The ID of the service level objective object. |  |

### Return type

[**SLOResponse**](SLOResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_slo_history

> <SLOHistoryResponse> get_slo_history(slo_id, from_ts, to_ts)

Get an SLO's history

Get a specific SLO’s history, regardless of its SLO type.  The detailed history data is structured according to the source data type. For example, metric data is included for event SLOs that use the metric source, and monitor SLO types include the monitor transition history.  **Note:** There are different response formats for event based and time based SLOs. Examples of both are shown.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]

  config.unstable_operations[:get_slo_history] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesApi.new
slo_id = 'slo_id_example' # String | The ID of the service level objective object.
from_ts = 789 # Integer | The `from` timestamp for the query window in epoch seconds.
to_ts = 789 # Integer | The `to` timestamp for the query window in epoch seconds.

begin
  # Get an SLO's history
  result = api_instance.get_slo_history(slo_id, from_ts, to_ts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->get_slo_history: #{e}"
end
```

#### Using the get_slo_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOHistoryResponse>, Integer, Hash)> get_slo_history_with_http_info(slo_id, from_ts, to_ts)

```ruby
begin
  # Get an SLO's history
  data, status_code, headers = api_instance.get_slo_history_with_http_info(slo_id, from_ts, to_ts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOHistoryResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->get_slo_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_id** | **String** | The ID of the service level objective object. |  |
| **from_ts** | **Integer** | The &#x60;from&#x60; timestamp for the query window in epoch seconds. |  |
| **to_ts** | **Integer** | The &#x60;to&#x60; timestamp for the query window in epoch seconds. |  |

### Return type

[**SLOHistoryResponse**](SLOHistoryResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_slos

> <SLOListResponse> list_slos(opts)

Get all SLOs

Get a list of service level objective objects for your organization.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesApi.new
opts = {
  ids: 'id1, id2, id3', # String | A comma separated list of the IDs of the service level objectives objects.
  query: 'monitor', # String | The query string to filter results based on SLO names.
  tags_query: 'env:prod', # String | The query string to filter results based on a single SLO tag.
  metrics_query: 'aws.elb.request_count' # String | The query string to filter results based on SLO numerator and denominator.
}

begin
  # Get all SLOs
  result = api_instance.list_slos(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->list_slos: #{e}"
end
```

#### Using the list_slos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOListResponse>, Integer, Hash)> list_slos_with_http_info(opts)

```ruby
begin
  # Get all SLOs
  data, status_code, headers = api_instance.list_slos_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOListResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->list_slos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | A comma separated list of the IDs of the service level objectives objects. | [optional] |
| **query** | **String** | The query string to filter results based on SLO names. | [optional] |
| **tags_query** | **String** | The query string to filter results based on a single SLO tag. | [optional] |
| **metrics_query** | **String** | The query string to filter results based on SLO numerator and denominator. | [optional] |

### Return type

[**SLOListResponse**](SLOListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_slo

> <SLOListResponse> update_slo(slo_id, body)

Update a SLO

Update the specified service level objective object.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  # Defining the site is optional and defaults to datadoghq.com
  config.server_variables['site'] = ENV["DD_SITE"] if ENV.key? 'DD_SITE'

  # setup authorization
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesApi.new
slo_id = 'slo_id_example' # String | The ID of the service level objective object.
body = DatadogAPIClient::V1::ServiceLevelObjective.new({name: 'name_example', thresholds: [DatadogAPIClient::V1::SLOThreshold.new({target: 0.0, timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS})], type: DatadogAPIClient::V1::SLOType::METRIC}) # ServiceLevelObjective | The edited service level objective request object.

begin
  # Update a SLO
  result = api_instance.update_slo(slo_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->update_slo: #{e}"
end
```

#### Using the update_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOListResponse>, Integer, Hash)> update_slo_with_http_info(slo_id, body)

```ruby
begin
  # Update a SLO
  data, status_code, headers = api_instance.update_slo_with_http_info(slo_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOListResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling ServiceLevelObjectivesApi->update_slo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_id** | **String** | The ID of the service level objective object. |  |
| **body** | [**ServiceLevelObjective**](ServiceLevelObjective.md) | The edited service level objective request object. |  |

### Return type

[**SLOListResponse**](SLOListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


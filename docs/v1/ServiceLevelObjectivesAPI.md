# DatadogAPIClient::V1::ServiceLevelObjectivesAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_can_delete_slo**](ServiceLevelObjectivesAPI.md#check_can_delete_slo) | **GET** /api/v1/slo/can_delete | Check if SLOs can be safely deleted |
| [**create_slo**](ServiceLevelObjectivesAPI.md#create_slo) | **POST** /api/v1/slo | Create an SLO object |
| [**delete_slo**](ServiceLevelObjectivesAPI.md#delete_slo) | **DELETE** /api/v1/slo/{slo_id} | Delete an SLO |
| [**delete_slo_timeframe_in_bulk**](ServiceLevelObjectivesAPI.md#delete_slo_timeframe_in_bulk) | **POST** /api/v1/slo/bulk_delete | Bulk Delete SLO Timeframes |
| [**get_slo**](ServiceLevelObjectivesAPI.md#get_slo) | **GET** /api/v1/slo/{slo_id} | Get an SLO&#39;s details |
| [**get_slo_history**](ServiceLevelObjectivesAPI.md#get_slo_history) | **GET** /api/v1/slo/{slo_id}/history | Get an SLO&#39;s history |
| [**list_slos**](ServiceLevelObjectivesAPI.md#list_slos) | **GET** /api/v1/slo | Get all SLOs |
| [**update_slo**](ServiceLevelObjectivesAPI.md#update_slo) | **PUT** /api/v1/slo/{slo_id} | Update an SLO |


## check_can_delete_slo

> <CheckCanDeleteSLOResponse> check_can_delete_slo(ids)

Check if an SLO can be safely deleted. For example,
assure an SLO can be deleted without disrupting a dashboard.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
ids = 'id1, id2, id3' # String | A comma separated list of the IDs of the service level objectives objects.

begin
  # Check if SLOs can be safely deleted
  result = api_instance.check_can_delete_slo(ids)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->check_can_delete_slo: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->check_can_delete_slo_with_http_info: #{e}"
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

Create a service level objective object.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
body = DatadogAPIClient::V1::ServiceLevelObjectiveRequest.new({name: 'Custom Metric SLO', thresholds: [DatadogAPIClient::V1::SLOThreshold.new({target: 99.9, timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS})], type: DatadogAPIClient::V1::SLOType::METRIC}) # ServiceLevelObjectiveRequest | Service level objective request object.

begin
  # Create an SLO object
  result = api_instance.create_slo(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->create_slo: #{e}"
end
```

#### Using the create_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOListResponse>, Integer, Hash)> create_slo_with_http_info(body)

```ruby
begin
  # Create an SLO object
  data, status_code, headers = api_instance.create_slo_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->create_slo_with_http_info: #{e}"
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

Permanently delete the specified service level objective object.

If an SLO is used in a dashboard, the `DELETE /v1/slo/` endpoint returns
a 409 conflict error because the SLO is referenced in a dashboard.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = 'slo_id_example' # String | The ID of the service level objective.
opts = {
  force: 'force_example' # String | Delete the monitor even if it's referenced by other resources (e.g. SLO, composite monitor).
}

begin
  # Delete an SLO
  result = api_instance.delete_slo(slo_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->delete_slo: #{e}"
end
```

#### Using the delete_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLODeleteResponse>, Integer, Hash)> delete_slo_with_http_info(slo_id, opts)

```ruby
begin
  # Delete an SLO
  data, status_code, headers = api_instance.delete_slo_with_http_info(slo_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLODeleteResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->delete_slo_with_http_info: #{e}"
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

Delete (or partially delete) multiple service level objective objects.

This endpoint facilitates deletion of one or more thresholds for one or more
service level objective objects. If all thresholds are deleted, the service level
objective object is deleted as well.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
body = { key: [DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS]} # Hash<String, Array<SLOTimeframe>> | Delete multiple service level objective objects request body.

begin
  # Bulk Delete SLO Timeframes
  result = api_instance.delete_slo_timeframe_in_bulk(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->delete_slo_timeframe_in_bulk: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->delete_slo_timeframe_in_bulk_with_http_info: #{e}"
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

> <SLOResponse> get_slo(slo_id, opts)

Get a service level objective object.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = 'slo_id_example' # String | The ID of the service level objective object.
opts = {
  with_configured_alert_ids: true # Boolean | Get the IDs of SLO monitors that reference this SLO.
}

begin
  # Get an SLO's details
  result = api_instance.get_slo(slo_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->get_slo: #{e}"
end
```

#### Using the get_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOResponse>, Integer, Hash)> get_slo_with_http_info(slo_id, opts)

```ruby
begin
  # Get an SLO's details
  data, status_code, headers = api_instance.get_slo_with_http_info(slo_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->get_slo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_id** | **String** | The ID of the service level objective object. |  |
| **with_configured_alert_ids** | **Boolean** | Get the IDs of SLO monitors that reference this SLO. | [optional] |

### Return type

[**SLOResponse**](SLOResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_slo_history

> <SLOHistoryResponse> get_slo_history(slo_id, from_ts, to_ts, opts)

Get a specific SLO’s history, regardless of its SLO type.

The detailed history data is structured according to the source data type.
For example, metric data is included for event SLOs that use
the metric source, and monitor SLO types include the monitor transition history.

**Note:** There are different response formats for event based and time based SLOs.
Examples of both are shown.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_slo_history] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = 'slo_id_example' # String | The ID of the service level objective object.
from_ts = 789 # Integer | The `from` timestamp for the query window in epoch seconds.
to_ts = 789 # Integer | The `to` timestamp for the query window in epoch seconds.
opts = {
  target: 1.2 # Float | The SLO target. If `target` is passed in, the response will include the error budget that remains.
}

begin
  # Get an SLO's history
  result = api_instance.get_slo_history(slo_id, from_ts, to_ts, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->get_slo_history: #{e}"
end
```

#### Using the get_slo_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOHistoryResponse>, Integer, Hash)> get_slo_history_with_http_info(slo_id, from_ts, to_ts, opts)

```ruby
begin
  # Get an SLO's history
  data, status_code, headers = api_instance.get_slo_history_with_http_info(slo_id, from_ts, to_ts, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOHistoryResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->get_slo_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_id** | **String** | The ID of the service level objective object. |  |
| **from_ts** | **Integer** | The &#x60;from&#x60; timestamp for the query window in epoch seconds. |  |
| **to_ts** | **Integer** | The &#x60;to&#x60; timestamp for the query window in epoch seconds. |  |
| **target** | **Float** | The SLO target. If &#x60;target&#x60; is passed in, the response will include the error budget that remains. | [optional] |

### Return type

[**SLOHistoryResponse**](SLOHistoryResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_slos

> <SLOListResponse> list_slos(opts)

Get a list of service level objective objects for your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
opts = {
  ids: 'id1, id2, id3', # String | A comma separated list of the IDs of the service level objectives objects.
  query: 'monitor', # String | The query string to filter results based on SLO names.
  tags_query: 'env:prod', # String | The query string to filter results based on a single SLO tag.
  metrics_query: 'aws.elb.request_count', # String | The query string to filter results based on SLO numerator and denominator.
  limit: 789, # Integer | The number of SLOs to return in the response.
  offset: 789 # Integer | The specific offset to use as the beginning of the returned response.
}

begin
  # Get all SLOs
  result = api_instance.list_slos(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->list_slos: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->list_slos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | A comma separated list of the IDs of the service level objectives objects. | [optional] |
| **query** | **String** | The query string to filter results based on SLO names. | [optional] |
| **tags_query** | **String** | The query string to filter results based on a single SLO tag. | [optional] |
| **metrics_query** | **String** | The query string to filter results based on SLO numerator and denominator. | [optional] |
| **limit** | **Integer** | The number of SLOs to return in the response. | [optional] |
| **offset** | **Integer** | The specific offset to use as the beginning of the returned response. | [optional] |

### Return type

[**SLOListResponse**](SLOListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_slo

> <SLOListResponse> update_slo(slo_id, body)

Update the specified service level objective object.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = 'slo_id_example' # String | The ID of the service level objective object.
body = DatadogAPIClient::V1::ServiceLevelObjective.new({name: 'Custom Metric SLO', thresholds: [DatadogAPIClient::V1::SLOThreshold.new({target: 99.9, timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS})], type: DatadogAPIClient::V1::SLOType::METRIC}) # ServiceLevelObjective | The edited service level objective request object.

begin
  # Update an SLO
  result = api_instance.update_slo(slo_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->update_slo: #{e}"
end
```

#### Using the update_slo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOListResponse>, Integer, Hash)> update_slo_with_http_info(slo_id, body)

```ruby
begin
  # Update an SLO
  data, status_code, headers = api_instance.update_slo_with_http_info(slo_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->update_slo_with_http_info: #{e}"
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


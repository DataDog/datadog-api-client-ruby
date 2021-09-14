# DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#create_slo_correction) | **POST** /api/v1/slo/correction | Create an SLO correction |
| [**delete_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#delete_slo_correction) | **DELETE** /api/v1/slo/correction/{slo_correction_id} | Delete an SLO correction |
| [**get_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#get_slo_correction) | **GET** /api/v1/slo/correction/{slo_correction_id} | Get an SLO correction for an SLO |
| [**list_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#list_slo_correction) | **GET** /api/v1/slo/correction | Get all SLO corrections |
| [**update_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#update_slo_correction) | **PATCH** /api/v1/slo/correction/{slo_correction_id} | Update an SLO correction |


## create_slo_correction

> <SLOCorrectionResponse> create_slo_correction(body)

Create an SLO Correction.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:create_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
body = DatadogAPIClient::V1::SLOCorrectionCreateRequest.new # SLOCorrectionCreateRequest | Create an SLO Correction

begin
  # Create an SLO correction
  result = api_instance.create_slo_correction(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->create_slo_correction: #{e}"
end
```

#### Using the create_slo_correction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOCorrectionResponse>, Integer, Hash)> create_slo_correction_with_http_info(body)

```ruby
begin
  # Create an SLO correction
  data, status_code, headers = api_instance.create_slo_correction_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOCorrectionResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->create_slo_correction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SLOCorrectionCreateRequest**](SLOCorrectionCreateRequest.md) | Create an SLO Correction |  |

### Return type

[**SLOCorrectionResponse**](SLOCorrectionResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_slo_correction

> delete_slo_correction(slo_correction_id)

Permanently delete the specified SLO correction object.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:delete_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
slo_correction_id = 'slo_correction_id_example' # String | The ID of the SLO correction object.

begin
  # Delete an SLO correction
  api_instance.delete_slo_correction(slo_correction_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->delete_slo_correction: #{e}"
end
```

#### Using the delete_slo_correction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_slo_correction_with_http_info(slo_correction_id)

```ruby
begin
  # Delete an SLO correction
  data, status_code, headers = api_instance.delete_slo_correction_with_http_info(slo_correction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->delete_slo_correction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_correction_id** | **String** | The ID of the SLO correction object. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_slo_correction

> <SLOCorrectionResponse> get_slo_correction(slo_correction_id)

Get an SLO correction.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
slo_correction_id = 'slo_correction_id_example' # String | The ID of the SLO correction object.

begin
  # Get an SLO correction for an SLO
  result = api_instance.get_slo_correction(slo_correction_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->get_slo_correction: #{e}"
end
```

#### Using the get_slo_correction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOCorrectionResponse>, Integer, Hash)> get_slo_correction_with_http_info(slo_correction_id)

```ruby
begin
  # Get an SLO correction for an SLO
  data, status_code, headers = api_instance.get_slo_correction_with_http_info(slo_correction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOCorrectionResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->get_slo_correction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_correction_id** | **String** | The ID of the SLO correction object. |  |

### Return type

[**SLOCorrectionResponse**](SLOCorrectionResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_slo_correction

> <SLOCorrectionListResponse> list_slo_correction

Get all Service Level Objective corrections.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:list_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new

begin
  # Get all SLO corrections
  result = api_instance.list_slo_correction
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->list_slo_correction: #{e}"
end
```

#### Using the list_slo_correction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOCorrectionListResponse>, Integer, Hash)> list_slo_correction_with_http_info

```ruby
begin
  # Get all SLO corrections
  data, status_code, headers = api_instance.list_slo_correction_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOCorrectionListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->list_slo_correction_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SLOCorrectionListResponse**](SLOCorrectionListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_slo_correction

> <SLOCorrectionResponse> update_slo_correction(slo_correction_id, body)

Update the specified SLO correction object object.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:update_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
slo_correction_id = 'slo_correction_id_example' # String | The ID of the SLO correction object.
body = DatadogAPIClient::V1::SLOCorrectionUpdateRequest.new # SLOCorrectionUpdateRequest | The edited SLO correction object.

begin
  # Update an SLO correction
  result = api_instance.update_slo_correction(slo_correction_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->update_slo_correction: #{e}"
end
```

#### Using the update_slo_correction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SLOCorrectionResponse>, Integer, Hash)> update_slo_correction_with_http_info(slo_correction_id, body)

```ruby
begin
  # Update an SLO correction
  data, status_code, headers = api_instance.update_slo_correction_with_http_info(slo_correction_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SLOCorrectionResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->update_slo_correction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slo_correction_id** | **String** | The ID of the SLO correction object. |  |
| **body** | [**SLOCorrectionUpdateRequest**](SLOCorrectionUpdateRequest.md) | The edited SLO correction object. |  |

### Return type

[**SLOCorrectionResponse**](SLOCorrectionResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


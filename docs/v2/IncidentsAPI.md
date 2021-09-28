# DatadogAPIClient::V2::IncidentsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_incident**](IncidentsAPI.md#create_incident) | **POST** /api/v2/incidents | Create an incident |
| [**delete_incident**](IncidentsAPI.md#delete_incident) | **DELETE** /api/v2/incidents/{incident_id} | Delete an existing incident |
| [**get_incident**](IncidentsAPI.md#get_incident) | **GET** /api/v2/incidents/{incident_id} | Get the details of an incident |
| [**list_incidents**](IncidentsAPI.md#list_incidents) | **GET** /api/v2/incidents | Get a list of incidents |
| [**update_incident**](IncidentsAPI.md#update_incident) | **PATCH** /api/v2/incidents/{incident_id} | Update an existing incident |


## create_incident

> <IncidentResponse> create_incident(body)

Create an incident.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_incident] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
body = DatadogAPIClient::V2::IncidentCreateRequest.new({data: DatadogAPIClient::V2::IncidentCreateData.new({attributes: DatadogAPIClient::V2::IncidentCreateAttributes.new({customer_impacted: false, title: 'A test incident title'}), type: DatadogAPIClient::V2::IncidentType::INCIDENTS})}) # IncidentCreateRequest | Incident payload.

begin
  # Create an incident
  result = api_instance.create_incident(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->create_incident: #{e}"
end
```

#### Using the create_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentResponse>, Integer, Hash)> create_incident_with_http_info(body)

```ruby
begin
  # Create an incident
  data, status_code, headers = api_instance.create_incident_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->create_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**IncidentCreateRequest**](IncidentCreateRequest.md) | Incident payload. |  |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_incident

> delete_incident(incident_id)

Deletes an existing incident from the users organization.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_incident] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
incident_id = 'incident_id_example' # String | The UUID the incident.

begin
  # Delete an existing incident
  api_instance.delete_incident(incident_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->delete_incident: #{e}"
end
```

#### Using the delete_incident_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_incident_with_http_info(incident_id)

```ruby
begin
  # Delete an existing incident
  data, status_code, headers = api_instance.delete_incident_with_http_info(incident_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->delete_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | The UUID the incident. |  |

### Return type

nil (empty response body)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident

> <IncidentResponse> get_incident(incident_id, opts)

Get the details of an incident by `incident_id`.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_incident] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
incident_id = 'incident_id_example' # String | The UUID the incident.
opts = {
  include: [DatadogAPIClient::V2::IncidentRelatedObject::USERS] # Array<IncidentRelatedObject> | Specifies which types of related objects should be included in the response.
}

begin
  # Get the details of an incident
  result = api_instance.get_incident(incident_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->get_incident: #{e}"
end
```

#### Using the get_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentResponse>, Integer, Hash)> get_incident_with_http_info(incident_id, opts)

```ruby
begin
  # Get the details of an incident
  data, status_code, headers = api_instance.get_incident_with_http_info(incident_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->get_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | The UUID the incident. |  |
| **include** | **Array&lt;IncidentRelatedObject&gt;** | Specifies which types of related objects should be included in the response. | [optional] |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incidents

> <IncidentsResponse> list_incidents(opts)

Get all incidents for the user's organization.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_incidents] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
opts = {
  include: [DatadogAPIClient::V2::IncidentRelatedObject::USERS], # Array<IncidentRelatedObject> | Specifies which types of related objects should be included in the response.
  page_size: 10, # Integer | Size for a given page.
  page_offset: 0 # Integer | Specific offset to use as the beginning of the returned page.
}

begin
  # Get a list of incidents
  result = api_instance.list_incidents(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->list_incidents: #{e}"
end
```

#### Using the list_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsResponse>, Integer, Hash)> list_incidents_with_http_info(opts)

```ruby
begin
  # Get a list of incidents
  data, status_code, headers = api_instance.list_incidents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->list_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **Array&lt;IncidentRelatedObject&gt;** | Specifies which types of related objects should be included in the response. | [optional] |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_offset** | **Integer** | Specific offset to use as the beginning of the returned page. | [optional][default to 0] |

### Return type

[**IncidentsResponse**](IncidentsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_incident

> <IncidentResponse> update_incident(incident_id, body)

Updates an incident. Provide only the attributes that should be updated as this request is a partial update.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:update_incident] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
incident_id = 'incident_id_example' # String | The UUID the incident.
body = DatadogAPIClient::V2::IncidentUpdateRequest.new({data: DatadogAPIClient::V2::IncidentUpdateData.new({id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::IncidentType::INCIDENTS})}) # IncidentUpdateRequest | Incident Payload.

begin
  # Update an existing incident
  result = api_instance.update_incident(incident_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->update_incident: #{e}"
end
```

#### Using the update_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentResponse>, Integer, Hash)> update_incident_with_http_info(incident_id, body)

```ruby
begin
  # Update an existing incident
  data, status_code, headers = api_instance.update_incident_with_http_info(incident_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->update_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | The UUID the incident. |  |
| **body** | [**IncidentUpdateRequest**](IncidentUpdateRequest.md) | Incident Payload. |  |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


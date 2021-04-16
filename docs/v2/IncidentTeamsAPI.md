# DatadogAPIClient::V2::IncidentTeamsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_incident_team**](IncidentTeamsAPI.md#create_incident_team) | **POST** /api/v2/teams | Create a new incident team |
| [**delete_incident_team**](IncidentTeamsAPI.md#delete_incident_team) | **DELETE** /api/v2/teams/{team_id} | Delete an existing incident team |
| [**get_incident_team**](IncidentTeamsAPI.md#get_incident_team) | **GET** /api/v2/teams/{team_id} | Get details of an incident team |
| [**list_incident_teams**](IncidentTeamsAPI.md#list_incident_teams) | **GET** /api/v2/teams | Get a list of all incident teams |
| [**update_incident_team**](IncidentTeamsAPI.md#update_incident_team) | **PATCH** /api/v2/teams/{team_id} | Update an existing incident team |


## create_incident_team

> <IncidentTeamResponse> create_incident_team(body)

Create a new incident team

Creates a new incident team.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_incident_team] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
body = DatadogAPIClient::V2::IncidentTeamCreateRequest.new({data: DatadogAPIClient::V2::IncidentTeamCreateData.new({type: DatadogAPIClient::V2::IncidentTeamType::TEAMS})}) # IncidentTeamCreateRequest | Incident Team Payload.

begin
  # Create a new incident team
  result = api_instance.create_incident_team(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->create_incident_team: #{e}"
end
```

#### Using the create_incident_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentTeamResponse>, Integer, Hash)> create_incident_team_with_http_info(body)

```ruby
begin
  # Create a new incident team
  data, status_code, headers = api_instance.create_incident_team_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentTeamResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->create_incident_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**IncidentTeamCreateRequest**](IncidentTeamCreateRequest.md) | Incident Team Payload. |  |

### Return type

[**IncidentTeamResponse**](IncidentTeamResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_incident_team

> delete_incident_team(team_id)

Delete an existing incident team

Deletes an existing incident team.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_incident_team] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
team_id = 'team_id_example' # String | The ID of the incident team.

begin
  # Delete an existing incident team
  api_instance.delete_incident_team(team_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->delete_incident_team: #{e}"
end
```

#### Using the delete_incident_team_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_incident_team_with_http_info(team_id)

```ruby
begin
  # Delete an existing incident team
  data, status_code, headers = api_instance.delete_incident_team_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->delete_incident_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The ID of the incident team. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_team

> <IncidentTeamResponse> get_incident_team(team_id, opts)

Get details of an incident team

Get details of an incident team. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident teams.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_incident_team] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
team_id = 'team_id_example' # String | The ID of the incident team.
opts = {
  include: DatadogAPIClient::V2::IncidentRelatedObject::USERS # IncidentRelatedObject | Specifies which types of related objects should be included in the response.
}

begin
  # Get details of an incident team
  result = api_instance.get_incident_team(team_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->get_incident_team: #{e}"
end
```

#### Using the get_incident_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentTeamResponse>, Integer, Hash)> get_incident_team_with_http_info(team_id, opts)

```ruby
begin
  # Get details of an incident team
  data, status_code, headers = api_instance.get_incident_team_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentTeamResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->get_incident_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The ID of the incident team. |  |
| **include** | **IncidentRelatedObject** | Specifies which types of related objects should be included in the response. | [optional] |

### Return type

[**IncidentTeamResponse**](IncidentTeamResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_teams

> <IncidentTeamsResponse> list_incident_teams(opts)

Get a list of all incident teams

Get all incident teams for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident teams.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_incident_teams] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
opts = {
  include: DatadogAPIClient::V2::IncidentRelatedObject::USERS, # IncidentRelatedObject | Specifies which types of related objects should be included in the response.
  page_size: 789, # Integer | Size for a given page.
  page_offset: 789, # Integer | Specific offset to use as the beginning of the returned page.
  filter: 'ExampleTeamName' # String | A search query that filters teams by name.
}

begin
  # Get a list of all incident teams
  result = api_instance.list_incident_teams(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->list_incident_teams: #{e}"
end
```

#### Using the list_incident_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentTeamsResponse>, Integer, Hash)> list_incident_teams_with_http_info(opts)

```ruby
begin
  # Get a list of all incident teams
  data, status_code, headers = api_instance.list_incident_teams_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentTeamsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->list_incident_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **IncidentRelatedObject** | Specifies which types of related objects should be included in the response. | [optional] |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_offset** | **Integer** | Specific offset to use as the beginning of the returned page. | [optional][default to 0] |
| **filter** | **String** | A search query that filters teams by name. | [optional] |

### Return type

[**IncidentTeamsResponse**](IncidentTeamsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_incident_team

> <IncidentTeamResponse> update_incident_team(team_id, body)

Update an existing incident team

Updates an existing incident team. Only provide the attributes which should be updated as this request is a partial update.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:update_incident_team] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
team_id = 'team_id_example' # String | The ID of the incident team.
body = DatadogAPIClient::V2::IncidentTeamUpdateRequest.new({data: DatadogAPIClient::V2::IncidentTeamUpdateData.new({type: DatadogAPIClient::V2::IncidentTeamType::TEAMS})}) # IncidentTeamUpdateRequest | Incident Team Payload.

begin
  # Update an existing incident team
  result = api_instance.update_incident_team(team_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->update_incident_team: #{e}"
end
```

#### Using the update_incident_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentTeamResponse>, Integer, Hash)> update_incident_team_with_http_info(team_id, body)

```ruby
begin
  # Update an existing incident team
  data, status_code, headers = api_instance.update_incident_team_with_http_info(team_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentTeamResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->update_incident_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The ID of the incident team. |  |
| **body** | [**IncidentTeamUpdateRequest**](IncidentTeamUpdateRequest.md) | Incident Team Payload. |  |

### Return type

[**IncidentTeamResponse**](IncidentTeamResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


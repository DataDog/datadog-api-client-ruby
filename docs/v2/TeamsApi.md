# DatadogAPIClient::V2::TeamsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_team**](TeamsApi.md#create_team) | **POST** /api/v2/teams | Create a new team
[**delete_team**](TeamsApi.md#delete_team) | **DELETE** /api/v2/teams/{team_id} | Delete an existing team
[**get_team**](TeamsApi.md#get_team) | **GET** /api/v2/teams/{team_id} | Get details of a team
[**get_teams**](TeamsApi.md#get_teams) | **GET** /api/v2/teams | Get a list of all teams
[**update_team**](TeamsApi.md#update_team) | **PATCH** /api/v2/teams/{team_id} | Update an existing team



## create_team

> TeamResponse create_team(body)

Create a new team

Creates a new team.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::TeamsApi.new
body = DatadogAPIClient::V2::TeamCreateRequest.new # TeamCreateRequest | Teams Payload.

begin
  #Create a new team
  result = api_instance.create_team(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling TeamsApi->create_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TeamCreateRequest**](TeamCreateRequest.md)| Teams Payload. | 

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team

> delete_team(team_id)

Delete an existing team

Deletes an existing team.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::TeamsApi.new
team_id = 'team_id_example' # String | The ID of the team.

begin
  #Delete an existing team
  api_instance.delete_team(team_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling TeamsApi->delete_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The ID of the team. | 

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team

> TeamResponse get_team(team_id, opts)

Get details of a team

Get details of a team. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these teams.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::TeamsApi.new
team_id = 'team_id_example' # String | The ID of the team.
opts = {
  include: 'include_example' # String | Specifies which types of related objects should be included in the response.
}

begin
  #Get details of a team
  result = api_instance.get_team(team_id, opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling TeamsApi->get_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The ID of the team. | 
 **include** | **String**| Specifies which types of related objects should be included in the response. | [optional] 

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_teams

> TeamsResponse get_teams(opts)

Get a list of all teams

Get all teams for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these teams.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::TeamsApi.new
opts = {
  include: 'include_example', # String | Specifies which types of related objects should be included in the response.
  page_size: 10, # Integer | Size for a given page.
  page_offset: 0 # Integer | Specific offset to use as the beginning of the returned page.
}

begin
  #Get a list of all teams
  result = api_instance.get_teams(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling TeamsApi->get_teams: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Specifies which types of related objects should be included in the response. | [optional] 
 **page_size** | **Integer**| Size for a given page. | [optional] [default to 10]
 **page_offset** | **Integer**| Specific offset to use as the beginning of the returned page. | [optional] [default to 0]

### Return type

[**TeamsResponse**](TeamsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> TeamResponse update_team(team_id, body)

Update an existing team

Updates an existing team. Only provide the attributes which should be updated as this request is a partial update.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::TeamsApi.new
team_id = 'team_id_example' # String | The ID of the team.
body = DatadogAPIClient::V2::TeamUpdateRequest.new # TeamUpdateRequest | Teams Payload.

begin
  #Update an existing team
  result = api_instance.update_team(team_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling TeamsApi->update_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The ID of the team. | 
 **body** | [**TeamUpdateRequest**](TeamUpdateRequest.md)| Teams Payload. | 

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


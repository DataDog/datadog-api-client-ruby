# DatadogAPIClient::V2::UsersApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /api/v2/users | Create a user
[**disable_user**](UsersApi.md#disable_user) | **DELETE** /api/v2/users/{user_id} | Disable a user
[**get_invitation**](UsersApi.md#get_invitation) | **GET** /api/v2/user_invitations/{user_invitation_uuid} | Get a user invitation
[**get_user**](UsersApi.md#get_user) | **GET** /api/v2/users/{user_id} | Get user details
[**list_user_organizations**](UsersApi.md#list_user_organizations) | **GET** /api/v2/users/{user_id}/orgs | Get a user organization
[**list_user_permissions**](UsersApi.md#list_user_permissions) | **GET** /api/v2/users/{user_id}/permissions | Get a user permissions
[**list_users**](UsersApi.md#list_users) | **GET** /api/v2/users | List all users
[**send_invitations**](UsersApi.md#send_invitations) | **POST** /api/v2/user_invitations | Send invitation emails
[**update_user**](UsersApi.md#update_user) | **PATCH** /api/v2/users/{user_id} | Update a user



## create_user

> UserResponse create_user(opts)

Create a user

Create a user for your organization.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
opts = {
  body: DatadogAPIClient::V2::UserCreateRequest.new # UserCreateRequest | 
}

begin
  #Create a user
  result = api_instance.create_user(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->create_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCreateRequest**](UserCreateRequest.md)|  | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disable_user

> disable_user(user_id)

Disable a user

Disable a user. Can only be used with an application key belonging to an administrator user.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user.

begin
  #Disable a user
  api_instance.disable_user(user_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->disable_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The ID of the user. | 

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invitation

> UserInvitationResponse get_invitation(user_invitation_uuid)

Get a user invitation

Returns a single user invitation by its UUID.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
user_invitation_uuid = 'user_invitation_uuid_example' # String | The UUID of the user invitation.

begin
  #Get a user invitation
  result = api_instance.get_invitation(user_invitation_uuid)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->get_invitation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_invitation_uuid** | **String**| The UUID of the user invitation. | 

### Return type

[**UserInvitationResponse**](UserInvitationResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> UserResponse get_user(user_id)

Get user details

Get a user in the organization specified by the user’s `user_id`.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user.

begin
  #Get user details
  result = api_instance.get_user(user_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The ID of the user. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_organizations

> UserResponse list_user_organizations(user_id)

Get a user organization

Get a user organization. Returns the user information and all organizations joined by this user.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user.

begin
  #Get a user organization
  result = api_instance.list_user_organizations(user_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->list_user_organizations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The ID of the user. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_permissions

> PermissionsResponse list_user_permissions(user_id)

Get a user permissions

Get a user permission set. Returns a list of the user’s permissions granted by the associated user's roles.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user.

begin
  #Get a user permissions
  result = api_instance.list_user_permissions(user_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->list_user_permissions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The ID of the user. | 

### Return type

[**PermissionsResponse**](PermissionsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> UsersResponse list_users(opts)

List all users

Get the list of all users in the organization. This list includes all users even if they are deactivated or unverified.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0, # Integer | Specific page number to return.
  sort: 'name', # String | User attribute to order results by. Sort order is ascending by default. Sort order is descending if the field is prefixed by a negative sign, for example `sort=-name`. Options: `name`, `modified_at`, `user_count`.
  sort_dir: DatadogAPIClient::V2::QuerySortOrder.new, # QuerySortOrder | Direction of sort. Options: `asc`, `desc`.
  filter: 'filter_example', # String | Filter all users by the given string. Defaults to no filtering.
  filter_status: 'filter_status_example' # String | Filter on status attribute. Comma separated list, with possible values `Active`, `Pending`, and `Disabled`. Defaults to no filtering.
}

begin
  #List all users
  result = api_instance.list_users(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->list_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| Size for a given page. | [optional] [default to 10]
 **page_number** | **Integer**| Specific page number to return. | [optional] [default to 0]
 **sort** | **String**| User attribute to order results by. Sort order is ascending by default. Sort order is descending if the field is prefixed by a negative sign, for example &#x60;sort&#x3D;-name&#x60;. Options: &#x60;name&#x60;, &#x60;modified_at&#x60;, &#x60;user_count&#x60;. | [optional] [default to &#39;name&#39;]
 **sort_dir** | [**QuerySortOrder**](.md)| Direction of sort. Options: &#x60;asc&#x60;, &#x60;desc&#x60;. | [optional] 
 **filter** | **String**| Filter all users by the given string. Defaults to no filtering. | [optional] 
 **filter_status** | **String**| Filter on status attribute. Comma separated list, with possible values &#x60;Active&#x60;, &#x60;Pending&#x60;, and &#x60;Disabled&#x60;. Defaults to no filtering. | [optional] 

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_invitations

> UserInvitationsResponse send_invitations(opts)

Send invitation emails

Sends emails to one or more users inviting them to join the organization.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
opts = {
  body: DatadogAPIClient::V2::UserInvitationsRequest.new # UserInvitationsRequest | 
}

begin
  #Send invitation emails
  result = api_instance.send_invitations(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->send_invitations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserInvitationsRequest**](UserInvitationsRequest.md)|  | [optional] 

### Return type

[**UserInvitationsResponse**](UserInvitationsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> UserResponse update_user(user_id, opts)

Update a user

Edit a user. Can only be used with an application key belonging to an administrator user.

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

api_instance = DatadogAPIClient::V2::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user.
opts = {
  body: DatadogAPIClient::V2::UserUpdateRequest.new # UserUpdateRequest | 
}

begin
  #Update a user
  result = api_instance.update_user(user_id, opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The ID of the user. | 
 **body** | [**UserUpdateRequest**](UserUpdateRequest.md)|  | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# DatadogAPIClient::V1::UsersApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /api/v1/user | Create a user
[**disable_user**](UsersApi.md#disable_user) | **DELETE** /api/v1/user/{user_handle} | Disable a user
[**get_user**](UsersApi.md#get_user) | **GET** /api/v1/user/{user_handle} | Get user details
[**list_users**](UsersApi.md#list_users) | **GET** /api/v1/user | Get all users
[**update_user**](UsersApi.md#update_user) | **PUT** /api/v1/user/{user_handle} | Update a user



## create_user

> UserResponse create_user(body)

Create a user

Create a user for your organization.  **Note**: Users can only be created with the admin access role if application keys belong to administrators.

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

api_instance = DatadogAPIClient::V1::UsersApi.new
body = DatadogAPIClient::V1::User.new # User | User object that needs to be created.

begin
  #Create a user
  result = api_instance.create_user(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling UsersApi->create_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)| User object that needs to be created. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disable_user

> UserDisableResponse disable_user(user_handle)

Disable a user

Delete a user from an organization.  **Note**: This endpoint can only be used with application keys belonging to administrators.

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

api_instance = DatadogAPIClient::V1::UsersApi.new
user_handle = 'test@datadoghq.com' # String | The handle of the user.

begin
  #Disable a user
  result = api_instance.disable_user(user_handle)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling UsersApi->disable_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_handle** | [**String**](.md)| The handle of the user. | 

### Return type

[**UserDisableResponse**](UserDisableResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> UserResponse get_user(user_handle)

Get user details

Get a user's details.

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

api_instance = DatadogAPIClient::V1::UsersApi.new
user_handle = 'test@datadoghq.com' # String | The ID of the user.

begin
  #Get user details
  result = api_instance.get_user(user_handle)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_handle** | [**String**](.md)| The ID of the user. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> UserListResponse list_users

Get all users

Get all users for your organization.

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

api_instance = DatadogAPIClient::V1::UsersApi.new

begin
  #Get all users
  result = api_instance.list_users
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling UsersApi->list_users: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserListResponse**](UserListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> UserResponse update_user(user_handle, body)

Update a user

Update a user information.  **Note**: It can only be used with application keys belonging to administrators.

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

api_instance = DatadogAPIClient::V1::UsersApi.new
user_handle = 'test@datadoghq.com' # String | The ID of the user.
body = DatadogAPIClient::V1::User.new # User | Description of the update.

begin
  #Update a user
  result = api_instance.update_user(user_handle, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_handle** | [**String**](.md)| The ID of the user. | 
 **body** | [**User**](User.md)| Description of the update. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


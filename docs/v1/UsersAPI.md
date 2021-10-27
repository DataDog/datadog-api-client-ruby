# DatadogAPIClient::V1::UsersAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                       | HTTP request                          | Description      |
| -------------------------------------------- | ------------------------------------- | ---------------- |
| [**create_user**](UsersAPI.md#create_user)   | **POST** /api/v1/user                 | Create a user    |
| [**disable_user**](UsersAPI.md#disable_user) | **DELETE** /api/v1/user/{user_handle} | Disable a user   |
| [**get_user**](UsersAPI.md#get_user)         | **GET** /api/v1/user/{user_handle}    | Get user details |
| [**list_users**](UsersAPI.md#list_users)     | **GET** /api/v1/user                  | List all users   |
| [**update_user**](UsersAPI.md#update_user)   | **PUT** /api/v1/user/{user_handle}    | Update a user    |

## create_user

> <UserResponse> create_user(body)

Create a user for your organization.

**Note**: Users can only be created with the admin access role
if application keys belong to administrators.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsersAPI.new
body = DatadogAPIClient::V1::User.new # User | User object that needs to be created.

begin
  # Create a user
  result = api_instance.create_user(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> create_user_with_http_info(body)

```ruby
begin
  # Create a user
  data, status_code, headers = api_instance.create_user_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                | Description                           | Notes |
| -------- | ------------------- | ------------------------------------- | ----- |
| **body** | [**User**](User.md) | User object that needs to be created. |       |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## disable_user

> <UserDisableResponse> disable_user(user_handle)

Delete a user from an organization.

**Note**: This endpoint can only be used with application keys belonging to
administrators.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsersAPI.new
user_handle = TODO # String | The handle of the user.

begin
  # Disable a user
  result = api_instance.disable_user(user_handle)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->disable_user: #{e}"
end
```

#### Using the disable_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserDisableResponse>, Integer, Hash)> disable_user_with_http_info(user_handle)

```ruby
begin
  # Disable a user
  data, status_code, headers = api_instance.disable_user_with_http_info(user_handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserDisableResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->disable_user_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type       | Description             | Notes |
| --------------- | ---------- | ----------------------- | ----- |
| **user_handle** | **String** | The handle of the user. |       |

### Return type

[**UserDisableResponse**](UserDisableResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_user

> <UserResponse> get_user(user_handle)

Get a user's details.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsersAPI.new
user_handle = TODO # String | The ID of the user.

begin
  # Get user details
  result = api_instance.get_user(user_handle)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> get_user_with_http_info(user_handle)

```ruby
begin
  # Get user details
  data, status_code, headers = api_instance.get_user_with_http_info(user_handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type       | Description         | Notes |
| --------------- | ---------- | ------------------- | ----- |
| **user_handle** | **String** | The ID of the user. |       |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_users

> <UserListResponse> list_users

List all users for your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsersAPI.new

begin
  # List all users
  result = api_instance.list_users
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListResponse>, Integer, Hash)> list_users_with_http_info

```ruby
begin
  # List all users
  data, status_code, headers = api_instance.list_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->list_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserListResponse**](UserListResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_user

> <UserResponse> update_user(user_handle, body)

Update a user information.

**Note**: It can only be used with application keys belonging to administrators.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsersAPI.new
user_handle = TODO # String | The ID of the user.
body = DatadogAPIClient::V1::User.new # User | Description of the update.

begin
  # Update a user
  result = api_instance.update_user(user_handle, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> update_user_with_http_info(user_handle, body)

```ruby
begin
  # Update a user
  data, status_code, headers = api_instance.update_user_with_http_info(user_handle, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type                | Description                | Notes |
| --------------- | ------------------- | -------------------------- | ----- |
| **user_handle** | **String**          | The ID of the user.        |       |
| **body**        | [**User**](User.md) | Description of the update. |       |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

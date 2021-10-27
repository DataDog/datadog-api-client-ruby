# DatadogAPIClient::V2::UsersAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                             | HTTP request                                            | Description              |
| ------------------------------------------------------------------ | ------------------------------------------------------- | ------------------------ |
| [**create_service_account**](UsersAPI.md#create_service_account)   | **POST** /api/v2/service_accounts                       | Create a service account |
| [**create_user**](UsersAPI.md#create_user)                         | **POST** /api/v2/users                                  | Create a user            |
| [**disable_user**](UsersAPI.md#disable_user)                       | **DELETE** /api/v2/users/{user_id}                      | Disable a user           |
| [**get_invitation**](UsersAPI.md#get_invitation)                   | **GET** /api/v2/user_invitations/{user_invitation_uuid} | Get a user invitation    |
| [**get_user**](UsersAPI.md#get_user)                               | **GET** /api/v2/users/{user_id}                         | Get user details         |
| [**list_user_organizations**](UsersAPI.md#list_user_organizations) | **GET** /api/v2/users/{user_id}/orgs                    | Get a user organization  |
| [**list_user_permissions**](UsersAPI.md#list_user_permissions)     | **GET** /api/v2/users/{user_id}/permissions             | Get a user permissions   |
| [**list_users**](UsersAPI.md#list_users)                           | **GET** /api/v2/users                                   | List all users           |
| [**send_invitations**](UsersAPI.md#send_invitations)               | **POST** /api/v2/user_invitations                       | Send invitation emails   |
| [**update_user**](UsersAPI.md#update_user)                         | **PATCH** /api/v2/users/{user_id}                       | Update a user            |

## create_service_account

> <UserResponse> create_service_account(body)

Create a service account for your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
body = DatadogAPIClient::V2::ServiceAccountCreateRequest.new({data: DatadogAPIClient::V2::ServiceAccountCreateData.new({attributes: DatadogAPIClient::V2::ServiceAccountCreateAttributes.new({email: 'jane.doe@example.com', service_account: true}), type: DatadogAPIClient::V2::UsersType::USERS})}) # ServiceAccountCreateRequest |

begin
  # Create a service account
  result = api_instance.create_service_account(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->create_service_account: #{e}"
end
```

#### Using the create_service_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> create_service_account_with_http_info(body)

```ruby
begin
  # Create a service account
  data, status_code, headers = api_instance.create_service_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->create_service_account_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                              | Description | Notes |
| -------- | ----------------------------------------------------------------- | ----------- | ----- |
| **body** | [**ServiceAccountCreateRequest**](ServiceAccountCreateRequest.md) |             |       |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## create_user

> <UserResponse> create_user(body)

Create a user for your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
body = DatadogAPIClient::V2::UserCreateRequest.new({data: DatadogAPIClient::V2::UserCreateData.new({attributes: DatadogAPIClient::V2::UserCreateAttributes.new({email: 'jane.doe@example.com'}), type: DatadogAPIClient::V2::UsersType::USERS})}) # UserCreateRequest |

begin
  # Create a user
  result = api_instance.create_user(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                          | Description | Notes |
| -------- | --------------------------------------------- | ----------- | ----- |
| **body** | [**UserCreateRequest**](UserCreateRequest.md) |             |       |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## disable_user

> disable_user(user_id)

Disable a user. Can only be used with an application key belonging
to an administrator user.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the user.

begin
  # Disable a user
  api_instance.disable_user(user_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->disable_user: #{e}"
end
```

#### Using the disable_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_user_with_http_info(user_id)

```ruby
begin
  # Disable a user
  data, status_code, headers = api_instance.disable_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->disable_user_with_http_info: #{e}"
end
```

### Parameters

| Name        | Type       | Description         | Notes |
| ----------- | ---------- | ------------------- | ----- |
| **user_id** | **String** | The ID of the user. |       |

### Return type

nil (empty response body)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_invitation

> <UserInvitationResponse> get_invitation(user_invitation_uuid)

Returns a single user invitation by its UUID.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_invitation_uuid = '00000000-0000-0000-0000-000000000000' # String | The UUID of the user invitation.

begin
  # Get a user invitation
  result = api_instance.get_invitation(user_invitation_uuid)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->get_invitation: #{e}"
end
```

#### Using the get_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserInvitationResponse>, Integer, Hash)> get_invitation_with_http_info(user_invitation_uuid)

```ruby
begin
  # Get a user invitation
  data, status_code, headers = api_instance.get_invitation_with_http_info(user_invitation_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserInvitationResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->get_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name                     | Type       | Description                      | Notes |
| ------------------------ | ---------- | -------------------------------- | ----- |
| **user_invitation_uuid** | **String** | The UUID of the user invitation. |       |

### Return type

[**UserInvitationResponse**](UserInvitationResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_user

> <UserResponse> get_user(user_id)

Get a user in the organization specified by the user’s `user_id`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the user.

begin
  # Get user details
  result = api_instance.get_user(user_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> get_user_with_http_info(user_id)

```ruby
begin
  # Get user details
  data, status_code, headers = api_instance.get_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name        | Type       | Description         | Notes |
| ----------- | ---------- | ------------------- | ----- |
| **user_id** | **String** | The ID of the user. |       |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_user_organizations

> <UserResponse> list_user_organizations(user_id)

Get a user organization. Returns the user information and all organizations
joined by this user.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the user.

begin
  # Get a user organization
  result = api_instance.list_user_organizations(user_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->list_user_organizations: #{e}"
end
```

#### Using the list_user_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> list_user_organizations_with_http_info(user_id)

```ruby
begin
  # Get a user organization
  data, status_code, headers = api_instance.list_user_organizations_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->list_user_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name        | Type       | Description         | Notes |
| ----------- | ---------- | ------------------- | ----- |
| **user_id** | **String** | The ID of the user. |       |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_user_permissions

> <PermissionsResponse> list_user_permissions(user_id)

Get a user permission set. Returns a list of the user’s permissions
granted by the associated user's roles.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the user.

begin
  # Get a user permissions
  result = api_instance.list_user_permissions(user_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->list_user_permissions: #{e}"
end
```

#### Using the list_user_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionsResponse>, Integer, Hash)> list_user_permissions_with_http_info(user_id)

```ruby
begin
  # Get a user permissions
  data, status_code, headers = api_instance.list_user_permissions_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->list_user_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name        | Type       | Description         | Notes |
| ----------- | ---------- | ------------------- | ----- |
| **user_id** | **String** | The ID of the user. |       |

### Return type

[**PermissionsResponse**](PermissionsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_users

> <UsersResponse> list_users(opts)

Get the list of all users in the organization. This list includes
all users even if they are deactivated or unverified.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0, # Integer | Specific page number to return.
  sort: 'name', # String | User attribute to order results by. Sort order is ascending by default. Sort order is descending if the field is prefixed by a negative sign, for example `sort=-name`. Options: `name`, `modified_at`, `user_count`.
  sort_dir: DatadogAPIClient::V2::QuerySortOrder::ASC, # QuerySortOrder | Direction of sort. Options: `asc`, `desc`.
  filter: 'filter_example', # String | Filter all users by the given string. Defaults to no filtering.
  filter_status: 'Active' # String | Filter on status attribute. Comma separated list, with possible values `Active`, `Pending`, and `Disabled`. Defaults to no filtering.
}

begin
  # List all users
  result = api_instance.list_users(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponse>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # List all users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name              | Type               | Description                                                                                                                                                                                                                                                        | Notes                                 |
| ----------------- | ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------- |
| **page_size**     | **Integer**        | Size for a given page.                                                                                                                                                                                                                                             | [optional][default to 10]             |
| **page_number**   | **Integer**        | Specific page number to return.                                                                                                                                                                                                                                    | [optional][default to 0]              |
| **sort**          | **String**         | User attribute to order results by. Sort order is ascending by default. Sort order is descending if the field is prefixed by a negative sign, for example &#x60;sort&#x3D;-name&#x60;. Options: &#x60;name&#x60;, &#x60;modified_at&#x60;, &#x60;user_count&#x60;. | [optional][default to &#39;name&#39;] |
| **sort_dir**      | **QuerySortOrder** | Direction of sort. Options: &#x60;asc&#x60;, &#x60;desc&#x60;.                                                                                                                                                                                                     | [optional][default to &#39;desc&#39;] |
| **filter**        | **String**         | Filter all users by the given string. Defaults to no filtering.                                                                                                                                                                                                    | [optional]                            |
| **filter_status** | **String**         | Filter on status attribute. Comma separated list, with possible values &#x60;Active&#x60;, &#x60;Pending&#x60;, and &#x60;Disabled&#x60;. Defaults to no filtering.                                                                                                | [optional]                            |

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## send_invitations

> <UserInvitationsResponse> send_invitations(body)

Sends emails to one or more users inviting them to join the organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
body = DatadogAPIClient::V2::UserInvitationsRequest.new({data: [DatadogAPIClient::V2::UserInvitationData.new({relationships: DatadogAPIClient::V2::UserInvitationRelationships.new({user: DatadogAPIClient::V2::RelationshipToUser.new({data: DatadogAPIClient::V2::RelationshipToUserData.new({id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::UsersType::USERS})})}), type: DatadogAPIClient::V2::UserInvitationsType::USER_INVITATIONS})]}) # UserInvitationsRequest |

begin
  # Send invitation emails
  result = api_instance.send_invitations(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->send_invitations: #{e}"
end
```

#### Using the send_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserInvitationsResponse>, Integer, Hash)> send_invitations_with_http_info(body)

```ruby
begin
  # Send invitation emails
  data, status_code, headers = api_instance.send_invitations_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserInvitationsResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->send_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                    | Description | Notes |
| -------- | ------------------------------------------------------- | ----------- | ----- |
| **body** | [**UserInvitationsRequest**](UserInvitationsRequest.md) |             |       |

### Return type

[**UserInvitationsResponse**](UserInvitationsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## update_user

> <UserResponse> update_user(user_id, body)

Edit a user. Can only be used with an application key belonging
to an administrator user.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the user.
body = DatadogAPIClient::V2::UserUpdateRequest.new({data: DatadogAPIClient::V2::UserUpdateData.new({attributes: DatadogAPIClient::V2::UserUpdateAttributes.new, id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::UsersType::USERS})}) # UserUpdateRequest |

begin
  # Update a user
  result = api_instance.update_user(user_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> update_user_with_http_info(user_id, body)

```ruby
begin
  # Update a user
  data, status_code, headers = api_instance.update_user_with_http_info(user_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name        | Type                                          | Description         | Notes |
| ----------- | --------------------------------------------- | ------------------- | ----- |
| **user_id** | **String**                                    | The ID of the user. |       |
| **body**    | [**UserUpdateRequest**](UserUpdateRequest.md) |                     |       |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

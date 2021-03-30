# DatadogAPIClient::V2::RolesApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_permission_to_role**](RolesApi.md#add_permission_to_role) | **POST** /api/v2/roles/{role_id}/permissions | Grant permission to a role |
| [**add_user_to_role**](RolesApi.md#add_user_to_role) | **POST** /api/v2/roles/{role_id}/users | Add a user to a role |
| [**create_role**](RolesApi.md#create_role) | **POST** /api/v2/roles | Create role |
| [**delete_role**](RolesApi.md#delete_role) | **DELETE** /api/v2/roles/{role_id} | Delete role |
| [**get_role**](RolesApi.md#get_role) | **GET** /api/v2/roles/{role_id} | Get a role |
| [**list_permissions**](RolesApi.md#list_permissions) | **GET** /api/v2/permissions | List permissions |
| [**list_role_permissions**](RolesApi.md#list_role_permissions) | **GET** /api/v2/roles/{role_id}/permissions | List permissions for a role |
| [**list_role_users**](RolesApi.md#list_role_users) | **GET** /api/v2/roles/{role_id}/users | Get all users of a role |
| [**list_roles**](RolesApi.md#list_roles) | **GET** /api/v2/roles | List roles |
| [**remove_permission_from_role**](RolesApi.md#remove_permission_from_role) | **DELETE** /api/v2/roles/{role_id}/permissions | Revoke permission |
| [**remove_user_from_role**](RolesApi.md#remove_user_from_role) | **DELETE** /api/v2/roles/{role_id}/users | Remove a user from a role |
| [**update_role**](RolesApi.md#update_role) | **PATCH** /api/v2/roles/{role_id} | Update a role |


## add_permission_to_role

> <PermissionsResponse> add_permission_to_role(role_id, body)

Grant permission to a role

Adds a permission to a role.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.
body = DatadogAPIClient::V2::RelationshipToPermission.new # RelationshipToPermission | 

begin
  # Grant permission to a role
  result = api_instance.add_permission_to_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->add_permission_to_role: #{e}"
end
```

#### Using the add_permission_to_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionsResponse>, Integer, Hash)> add_permission_to_role_with_http_info(role_id, body)

```ruby
begin
  # Grant permission to a role
  data, status_code, headers = api_instance.add_permission_to_role_with_http_info(role_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionsResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->add_permission_to_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |
| **body** | [**RelationshipToPermission**](RelationshipToPermission.md) |  |  |

### Return type

[**PermissionsResponse**](PermissionsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_user_to_role

> <UsersResponse> add_user_to_role(role_id, body)

Add a user to a role

Adds a user to a role.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.
body = DatadogAPIClient::V2::RelationshipToUser.new({data: DatadogAPIClient::V2::RelationshipToUserData.new({id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::UsersType::USERS})}) # RelationshipToUser | 

begin
  # Add a user to a role
  result = api_instance.add_user_to_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->add_user_to_role: #{e}"
end
```

#### Using the add_user_to_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponse>, Integer, Hash)> add_user_to_role_with_http_info(role_id, body)

```ruby
begin
  # Add a user to a role
  data, status_code, headers = api_instance.add_user_to_role_with_http_info(role_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->add_user_to_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |
| **body** | [**RelationshipToUser**](RelationshipToUser.md) |  |  |

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_role

> <RoleCreateResponse> create_role(body)

Create role

Create a new role for your organization.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
body = DatadogAPIClient::V2::RoleCreateRequest.new({data: DatadogAPIClient::V2::RoleCreateData.new({attributes: DatadogAPIClient::V2::RoleCreateAttributes.new({name: 'developers'})})}) # RoleCreateRequest | 

begin
  # Create role
  result = api_instance.create_role(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->create_role: #{e}"
end
```

#### Using the create_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleCreateResponse>, Integer, Hash)> create_role_with_http_info(body)

```ruby
begin
  # Create role
  data, status_code, headers = api_instance.create_role_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleCreateResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->create_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RoleCreateRequest**](RoleCreateRequest.md) |  |  |

### Return type

[**RoleCreateResponse**](RoleCreateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_role

> delete_role(role_id)

Delete role

Disables a role.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.

begin
  # Delete role
  api_instance.delete_role(role_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->delete_role: #{e}"
end
```

#### Using the delete_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_role_with_http_info(role_id)

```ruby
begin
  # Delete role
  data, status_code, headers = api_instance.delete_role_with_http_info(role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->delete_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role

> <RoleResponse> get_role(role_id)

Get a role

Get a role in the organization specified by the role’s `role_id`.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.

begin
  # Get a role
  result = api_instance.get_role(role_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->get_role: #{e}"
end
```

#### Using the get_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleResponse>, Integer, Hash)> get_role_with_http_info(role_id)

```ruby
begin
  # Get a role
  data, status_code, headers = api_instance.get_role_with_http_info(role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->get_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |

### Return type

[**RoleResponse**](RoleResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_permissions

> <PermissionsResponse> list_permissions

List permissions

Returns a list of all permissions, including name, description, and ID.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new

begin
  # List permissions
  result = api_instance.list_permissions
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->list_permissions: #{e}"
end
```

#### Using the list_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionsResponse>, Integer, Hash)> list_permissions_with_http_info

```ruby
begin
  # List permissions
  data, status_code, headers = api_instance.list_permissions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionsResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->list_permissions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PermissionsResponse**](PermissionsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_role_permissions

> <PermissionsResponse> list_role_permissions(role_id)

List permissions for a role

Returns a list of all permissions for a single role.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.

begin
  # List permissions for a role
  result = api_instance.list_role_permissions(role_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->list_role_permissions: #{e}"
end
```

#### Using the list_role_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionsResponse>, Integer, Hash)> list_role_permissions_with_http_info(role_id)

```ruby
begin
  # List permissions for a role
  data, status_code, headers = api_instance.list_role_permissions_with_http_info(role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionsResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->list_role_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |

### Return type

[**PermissionsResponse**](PermissionsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_role_users

> <UsersResponse> list_role_users(role_id, opts)

Get all users of a role

Gets all users of a role.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.
opts = {
  page_size: 789, # Integer | Size for a given page.
  page_number: 789, # Integer | Specific page number to return.
  sort: 'sort_example', # String | User attribute to order results by. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example `sort=-name`. Options: `name`, `email`, `status`.
  filter: 'filter_example' # String | Filter all users by the given string. Defaults to no filtering.
}

begin
  # Get all users of a role
  result = api_instance.list_role_users(role_id, opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->list_role_users: #{e}"
end
```

#### Using the list_role_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponse>, Integer, Hash)> list_role_users_with_http_info(role_id, opts)

```ruby
begin
  # Get all users of a role
  data, status_code, headers = api_instance.list_role_users_with_http_info(role_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->list_role_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_number** | **Integer** | Specific page number to return. | [optional][default to 0] |
| **sort** | **String** | User attribute to order results by. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example &#x60;sort&#x3D;-name&#x60;. Options: &#x60;name&#x60;, &#x60;email&#x60;, &#x60;status&#x60;. | [optional][default to &#39;name&#39;] |
| **filter** | **String** | Filter all users by the given string. Defaults to no filtering. | [optional] |

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_roles

> <RolesResponse> list_roles(opts)

List roles

Returns all roles, including their names and IDs.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
opts = {
  page_size: 789, # Integer | Size for a given page.
  page_number: 789, # Integer | Specific page number to return.
  sort: DatadogAPIClient::V2::RolesSort::NAME_ASCENDING, # RolesSort | Sort roles depending on the given field. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example: `sort=-name`.
  filter: 'filter_example' # String | Filter all roles by the given string.
}

begin
  # List roles
  result = api_instance.list_roles(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->list_roles: #{e}"
end
```

#### Using the list_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RolesResponse>, Integer, Hash)> list_roles_with_http_info(opts)

```ruby
begin
  # List roles
  data, status_code, headers = api_instance.list_roles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RolesResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->list_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_number** | **Integer** | Specific page number to return. | [optional][default to 0] |
| **sort** | **RolesSort** | Sort roles depending on the given field. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example: &#x60;sort&#x3D;-name&#x60;. | [optional][default to &#39;name&#39;] |
| **filter** | **String** | Filter all roles by the given string. | [optional] |

### Return type

[**RolesResponse**](RolesResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_permission_from_role

> <PermissionsResponse> remove_permission_from_role(role_id, body)

Revoke permission

Removes a permission from a role.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.
body = DatadogAPIClient::V2::RelationshipToPermission.new # RelationshipToPermission | 

begin
  # Revoke permission
  result = api_instance.remove_permission_from_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->remove_permission_from_role: #{e}"
end
```

#### Using the remove_permission_from_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionsResponse>, Integer, Hash)> remove_permission_from_role_with_http_info(role_id, body)

```ruby
begin
  # Revoke permission
  data, status_code, headers = api_instance.remove_permission_from_role_with_http_info(role_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionsResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->remove_permission_from_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |
| **body** | [**RelationshipToPermission**](RelationshipToPermission.md) |  |  |

### Return type

[**PermissionsResponse**](PermissionsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_user_from_role

> <UsersResponse> remove_user_from_role(role_id, body)

Remove a user from a role

Removes a user from a role.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.
body = DatadogAPIClient::V2::RelationshipToUser.new({data: DatadogAPIClient::V2::RelationshipToUserData.new({id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::UsersType::USERS})}) # RelationshipToUser | 

begin
  # Remove a user from a role
  result = api_instance.remove_user_from_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->remove_user_from_role: #{e}"
end
```

#### Using the remove_user_from_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponse>, Integer, Hash)> remove_user_from_role_with_http_info(role_id, body)

```ruby
begin
  # Remove a user from a role
  data, status_code, headers = api_instance.remove_user_from_role_with_http_info(role_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->remove_user_from_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |
| **body** | [**RelationshipToUser**](RelationshipToUser.md) |  |  |

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_role

> <RoleUpdateResponse> update_role(role_id, body)

Update a role

Edit a role. Can only be used with application keys belonging to administrators.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V2::RolesApi.new
role_id = 'role_id_example' # String | The ID of the role.
body = DatadogAPIClient::V2::RoleUpdateRequest.new({data: DatadogAPIClient::V2::RoleUpdateData.new({attributes: DatadogAPIClient::V2::RoleUpdateAttributes.new, id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::RolesType::ROLES})}) # RoleUpdateRequest | 

begin
  # Update a role
  result = api_instance.update_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->update_role: #{e}"
end
```

#### Using the update_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleUpdateResponse>, Integer, Hash)> update_role_with_http_info(role_id, body)

```ruby
begin
  # Update a role
  data, status_code, headers = api_instance.update_role_with_http_info(role_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleUpdateResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling RolesApi->update_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | The ID of the role. |  |
| **body** | [**RoleUpdateRequest**](RoleUpdateRequest.md) |  |  |

### Return type

[**RoleUpdateResponse**](RoleUpdateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


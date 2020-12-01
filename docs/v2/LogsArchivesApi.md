# DatadogAPIClient::V2::LogsArchivesApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_read_role_to_archive**](LogsArchivesApi.md#add_read_role_to_archive) | **POST** /api/v2/logs/config/archives/{archive_id}/readers | Grant role to an archive |
| [**create_logs_archive**](LogsArchivesApi.md#create_logs_archive) | **POST** /api/v2/logs/config/archives | Create an archive |
| [**delete_logs_archive**](LogsArchivesApi.md#delete_logs_archive) | **DELETE** /api/v2/logs/config/archives/{archive_id} | Delete an archive |
| [**get_logs_archive**](LogsArchivesApi.md#get_logs_archive) | **GET** /api/v2/logs/config/archives/{archive_id} | Get an archive |
| [**get_logs_archive_order**](LogsArchivesApi.md#get_logs_archive_order) | **GET** /api/v2/logs/config/archive-order | Get archive order |
| [**list_archive_read_roles**](LogsArchivesApi.md#list_archive_read_roles) | **GET** /api/v2/logs/config/archives/{archive_id}/readers | List read roles for an archive |
| [**list_logs_archives**](LogsArchivesApi.md#list_logs_archives) | **GET** /api/v2/logs/config/archives | Get all archives |
| [**remove_role_from_archive**](LogsArchivesApi.md#remove_role_from_archive) | **DELETE** /api/v2/logs/config/archives/{archive_id}/readers | Revoke role from an archive |
| [**update_logs_archive**](LogsArchivesApi.md#update_logs_archive) | **PUT** /api/v2/logs/config/archives/{archive_id} | Update an archive |
| [**update_logs_archive_order**](LogsArchivesApi.md#update_logs_archive_order) | **PUT** /api/v2/logs/config/archive-order | Update archive order |


## add_read_role_to_archive

> add_read_role_to_archive(archive_id, body)

Grant role to an archive

Adds a read role to an archive. ([Roles API](https://docs.datadoghq.com/api/v2/roles/))

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new
archive_id = 'archive_id_example' # String | The ID of the archive.
body = DatadogAPIClient::V2::RelationshipToRole.new # RelationshipToRole | 

begin
  #Grant role to an archive
  api_instance.add_read_role_to_archive(archive_id, body)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->add_read_role_to_archive: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archive_id** | **String** | The ID of the archive. |  |
| **body** | [**RelationshipToRole**](RelationshipToRole.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_logs_archive

> LogsArchive create_logs_archive(body)

Create an archive

Create an archive in your organization.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new
body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new # LogsArchiveCreateRequest | The definition of the new archive.

begin
  #Create an archive
  result = api_instance.create_logs_archive(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->create_logs_archive: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsArchiveCreateRequest**](LogsArchiveCreateRequest.md) | The definition of the new archive. |  |

### Return type

[**LogsArchive**](LogsArchive.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_logs_archive

> delete_logs_archive(archive_id)

Delete an archive

Delete a given archive from your organization.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new
archive_id = 'archive_id_example' # String | The ID of the archive.

begin
  #Delete an archive
  api_instance.delete_logs_archive(archive_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->delete_logs_archive: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archive_id** | **String** | The ID of the archive. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logs_archive

> LogsArchive get_logs_archive(archive_id)

Get an archive

Get a specific archive from your organization.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new
archive_id = 'archive_id_example' # String | The ID of the archive.

begin
  #Get an archive
  result = api_instance.get_logs_archive(archive_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->get_logs_archive: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archive_id** | **String** | The ID of the archive. |  |

### Return type

[**LogsArchive**](LogsArchive.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logs_archive_order

> LogsArchiveOrder get_logs_archive_order

Get archive order

Get the current order of your archives. This endpoint takes no JSON arguments.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new

begin
  #Get archive order
  result = api_instance.get_logs_archive_order
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->get_logs_archive_order: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsArchiveOrder**](LogsArchiveOrder.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_archive_read_roles

> RolesResponse list_archive_read_roles(archive_id)

List read roles for an archive

Returns all read roles a given archive is restricted to.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new
archive_id = 'archive_id_example' # String | The ID of the archive.

begin
  #List read roles for an archive
  result = api_instance.list_archive_read_roles(archive_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->list_archive_read_roles: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archive_id** | **String** | The ID of the archive. |  |

### Return type

[**RolesResponse**](RolesResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_logs_archives

> LogsArchives list_logs_archives

Get all archives

Get the list of configured logs archives with their definitions.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new

begin
  #Get all archives
  result = api_instance.list_logs_archives
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->list_logs_archives: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsArchives**](LogsArchives.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_role_from_archive

> remove_role_from_archive(archive_id, body)

Revoke role from an archive

Removes a role from an archive. ([Roles API](https://docs.datadoghq.com/api/v2/roles/))

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new
archive_id = 'archive_id_example' # String | The ID of the archive.
body = DatadogAPIClient::V2::RelationshipToRole.new # RelationshipToRole | 

begin
  #Revoke role from an archive
  api_instance.remove_role_from_archive(archive_id, body)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->remove_role_from_archive: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archive_id** | **String** | The ID of the archive. |  |
| **body** | [**RelationshipToRole**](RelationshipToRole.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_logs_archive

> LogsArchive update_logs_archive(archive_id, body)

Update an archive

Update a given archive configuration.  **Note**: Using this method updates your archive configuration by **replacing** your current configuration with the new one sent to your Datadog organization.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new
archive_id = 'archive_id_example' # String | The ID of the archive.
body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new # LogsArchiveCreateRequest | New definition of the archive.

begin
  #Update an archive
  result = api_instance.update_logs_archive(archive_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->update_logs_archive: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archive_id** | **String** | The ID of the archive. |  |
| **body** | [**LogsArchiveCreateRequest**](LogsArchiveCreateRequest.md) | New definition of the archive. |  |

### Return type

[**LogsArchive**](LogsArchive.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_logs_archive_order

> LogsArchiveOrder update_logs_archive_order(body)

Update archive order

Update the order of your archives. Since logs are processed sequentially, reordering an archive may change the structure and content of the data processed by other archives.  **Note**: Using the `PUT` method updates your archive's order by replacing the current order with the new one.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::LogsArchivesApi.new
body = DatadogAPIClient::V2::LogsArchiveOrder.new # LogsArchiveOrder | An object containing the new ordered list of archive IDs.

begin
  #Update archive order
  result = api_instance.update_logs_archive_order(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling LogsArchivesApi->update_logs_archive_order: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogsArchiveOrder**](LogsArchiveOrder.md) | An object containing the new ordered list of archive IDs. |  |

### Return type

[**LogsArchiveOrder**](LogsArchiveOrder.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


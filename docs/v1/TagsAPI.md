# DatadogAPIClient::V1::TagsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_host_tags**](TagsAPI.md#create_host_tags) | **POST** /api/v1/tags/hosts/{host_name} | Add tags to a host |
| [**delete_host_tags**](TagsAPI.md#delete_host_tags) | **DELETE** /api/v1/tags/hosts/{host_name} | Remove host tags |
| [**get_host_tags**](TagsAPI.md#get_host_tags) | **GET** /api/v1/tags/hosts/{host_name} | Get host tags |
| [**list_host_tags**](TagsAPI.md#list_host_tags) | **GET** /api/v1/tags/hosts | Get Tags |
| [**update_host_tags**](TagsAPI.md#update_host_tags) | **PUT** /api/v1/tags/hosts/{host_name} | Update host tags |


## create_host_tags

> <HostTags> create_host_tags(host_name, body, opts)

Add tags to a host

This endpoint allows you to add new tags to a host, optionally specifying where these tags come from.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::TagsAPI.new
host_name = 'host_name_example' # String | This endpoint allows you to add new tags to a host, optionally specifying where the tags came from.
body = DatadogAPIClient::V1::HostTags.new # HostTags | Update host tags request body.
opts = {
  source: 'chef' # String | The source of the tags. [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
}

begin
  # Add tags to a host
  result = api_instance.create_host_tags(host_name, body, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->create_host_tags: #{e}"
end
```

#### Using the create_host_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostTags>, Integer, Hash)> create_host_tags_with_http_info(host_name, body, opts)

```ruby
begin
  # Add tags to a host
  data, status_code, headers = api_instance.create_host_tags_with_http_info(host_name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostTags>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->create_host_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_name** | **String** | This endpoint allows you to add new tags to a host, optionally specifying where the tags came from. |  |
| **body** | [**HostTags**](HostTags.md) | Update host tags request body. |  |
| **source** | **String** | The source of the tags. [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value). | [optional] |

### Return type

[**HostTags**](HostTags.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_host_tags

> delete_host_tags(host_name, opts)

Remove host tags

This endpoint allows you to remove all user-assigned tags for a single host.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::TagsAPI.new
host_name = 'host_name_example' # String | This endpoint allows you to remove all user-assigned tags for a single host.
opts = {
  source: 'source_example' # String | The source of the tags (e.g. chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
}

begin
  # Remove host tags
  api_instance.delete_host_tags(host_name, opts)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->delete_host_tags: #{e}"
end
```

#### Using the delete_host_tags_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_host_tags_with_http_info(host_name, opts)

```ruby
begin
  # Remove host tags
  data, status_code, headers = api_instance.delete_host_tags_with_http_info(host_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->delete_host_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_name** | **String** | This endpoint allows you to remove all user-assigned tags for a single host. |  |
| **source** | **String** | The source of the tags (e.g. chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value). | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_host_tags

> <HostTags> get_host_tags(host_name, opts)

Get host tags

Return the list of tags that apply to a given host.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::TagsAPI.new
host_name = 'host_name_example' # String | When specified, filters list of tags to those tags with the specified source.
opts = {
  source: 'source_example' # String | Source to filter.
}

begin
  # Get host tags
  result = api_instance.get_host_tags(host_name, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->get_host_tags: #{e}"
end
```

#### Using the get_host_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostTags>, Integer, Hash)> get_host_tags_with_http_info(host_name, opts)

```ruby
begin
  # Get host tags
  data, status_code, headers = api_instance.get_host_tags_with_http_info(host_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostTags>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->get_host_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_name** | **String** | When specified, filters list of tags to those tags with the specified source. |  |
| **source** | **String** | Source to filter. | [optional] |

### Return type

[**HostTags**](HostTags.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_host_tags

> <TagToHosts> list_host_tags(opts)

Get Tags

Return a mapping of tags to hosts for your whole infrastructure.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::TagsAPI.new
opts = {
  source: 'source_example' # String | When specified, filters host list to those tags with the specified source.
}

begin
  # Get Tags
  result = api_instance.list_host_tags(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->list_host_tags: #{e}"
end
```

#### Using the list_host_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagToHosts>, Integer, Hash)> list_host_tags_with_http_info(opts)

```ruby
begin
  # Get Tags
  data, status_code, headers = api_instance.list_host_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagToHosts>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->list_host_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | When specified, filters host list to those tags with the specified source. | [optional] |

### Return type

[**TagToHosts**](TagToHosts.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_host_tags

> <HostTags> update_host_tags(host_name, body, opts)

Update host tags

This endpoint allows you to update/replace all tags in an integration source with those supplied in the request.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::TagsAPI.new
host_name = 'host_name_example' # String | This endpoint allows you to update/replace all in an integration source with those supplied in the request.
body = DatadogAPIClient::V1::HostTags.new # HostTags | Add tags to host
opts = {
  source: 'source_example' # String | The source of the tags (e.g. chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value)
}

begin
  # Update host tags
  result = api_instance.update_host_tags(host_name, body, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->update_host_tags: #{e}"
end
```

#### Using the update_host_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostTags>, Integer, Hash)> update_host_tags_with_http_info(host_name, body, opts)

```ruby
begin
  # Update host tags
  data, status_code, headers = api_instance.update_host_tags_with_http_info(host_name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostTags>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->update_host_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_name** | **String** | This endpoint allows you to update/replace all in an integration source with those supplied in the request. |  |
| **body** | [**HostTags**](HostTags.md) | Add tags to host |  |
| **source** | **String** | The source of the tags (e.g. chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value) | [optional] |

### Return type

[**HostTags**](HostTags.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


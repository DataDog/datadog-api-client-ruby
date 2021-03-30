# DatadogAPIClient::V1::OrganizationsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_child_org**](OrganizationsApi.md#create_child_org) | **POST** /api/v1/org | Create a child organization |
| [**get_org**](OrganizationsApi.md#get_org) | **GET** /api/v1/org/{public_id} | Get organization information |
| [**list_orgs**](OrganizationsApi.md#list_orgs) | **GET** /api/v1/org | List your managed organizations |
| [**update_org**](OrganizationsApi.md#update_org) | **PUT** /api/v1/org/{public_id} | Update your organization |
| [**upload_id_p_for_org**](OrganizationsApi.md#upload_id_p_for_org) | **POST** /api/v1/org/{public_id}/idp_metadata | Upload IdP metadata |


## create_child_org

> <OrganizationCreateResponse> create_child_org(body)

Create a child organization

Create a child organization.  This endpoint requires the [multi-organization account](https://docs.datadoghq.com/account_management/multi_organization/) feature and must be enabled by [contacting support](https://docs.datadoghq.com/help/).  Once a new child organization is created, you can interact with it by using the `org.public_id`, `pi_key.key`, and `application_key.hash` provided in the response.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::OrganizationsApi.new
body = DatadogAPIClient::V1::OrganizationCreateBody.new({name: 'New child org'}) # OrganizationCreateBody | Organization object that needs to be created

begin
  # Create a child organization
  result = api_instance.create_child_org(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->create_child_org: #{e}"
end
```

#### Using the create_child_org_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationCreateResponse>, Integer, Hash)> create_child_org_with_http_info(body)

```ruby
begin
  # Create a child organization
  data, status_code, headers = api_instance.create_child_org_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationCreateResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->create_child_org_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**OrganizationCreateBody**](OrganizationCreateBody.md) | Organization object that needs to be created |  |

### Return type

[**OrganizationCreateResponse**](OrganizationCreateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_org

> <OrganizationResponse> get_org(public_id)

Get organization information

Get organization information.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::OrganizationsApi.new
public_id = 'abc123' # String | The `public_id` of the organization you are operating within.

begin
  # Get organization information
  result = api_instance.get_org(public_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->get_org: #{e}"
end
```

#### Using the get_org_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationResponse>, Integer, Hash)> get_org_with_http_info(public_id)

```ruby
begin
  # Get organization information
  data, status_code, headers = api_instance.get_org_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->get_org_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The &#x60;public_id&#x60; of the organization you are operating within. |  |

### Return type

[**OrganizationResponse**](OrganizationResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_orgs

> <OrganizationListResponse> list_orgs

List your managed organizations

List your managed organizations.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::OrganizationsApi.new

begin
  # List your managed organizations
  result = api_instance.list_orgs
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->list_orgs: #{e}"
end
```

#### Using the list_orgs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationListResponse>, Integer, Hash)> list_orgs_with_http_info

```ruby
begin
  # List your managed organizations
  data, status_code, headers = api_instance.list_orgs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationListResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->list_orgs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OrganizationListResponse**](OrganizationListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_org

> <OrganizationResponse> update_org(public_id, body)

Update your organization

Update your organization.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::OrganizationsApi.new
public_id = 'abc123' # String | The `public_id` of the organization you are operating within.
body = DatadogAPIClient::V1::Organization.new # Organization | 

begin
  # Update your organization
  result = api_instance.update_org(public_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->update_org: #{e}"
end
```

#### Using the update_org_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationResponse>, Integer, Hash)> update_org_with_http_info(public_id, body)

```ruby
begin
  # Update your organization
  data, status_code, headers = api_instance.update_org_with_http_info(public_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->update_org_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The &#x60;public_id&#x60; of the organization you are operating within. |  |
| **body** | [**Organization**](Organization.md) |  |  |

### Return type

[**OrganizationResponse**](OrganizationResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_id_p_for_org

> <IdpResponse> upload_id_p_for_org(public_id, idp_file)

Upload IdP metadata

There are a couple of options for updating the Identity Provider (IdP) metadata from your SAML IdP.  * **Multipart Form-Data**: Post the IdP metadata file using a form post.  * **XML Body:** Post the IdP metadata file as the body of the request.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::OrganizationsApi.new
public_id = 'abc123' # String | The `public_id` of the organization you are operating with
idp_file = File.new('/path/to/some/file') # File | The path to the XML metadata file you wish to upload.

begin
  # Upload IdP metadata
  result = api_instance.upload_id_p_for_org(public_id, idp_file)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->upload_id_p_for_org: #{e}"
end
```

#### Using the upload_id_p_for_org_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdpResponse>, Integer, Hash)> upload_id_p_for_org_with_http_info(public_id, idp_file)

```ruby
begin
  # Upload IdP metadata
  data, status_code, headers = api_instance.upload_id_p_for_org_with_http_info(public_id, idp_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdpResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling OrganizationsApi->upload_id_p_for_org_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The &#x60;public_id&#x60; of the organization you are operating with |  |
| **idp_file** | **File** | The path to the XML metadata file you wish to upload. |  |

### Return type

[**IdpResponse**](IdpResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


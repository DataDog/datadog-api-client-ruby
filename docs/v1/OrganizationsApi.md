# DatadogAPIClient::V1::OrganizationsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_child_org**](OrganizationsApi.md#create_child_org) | **POST** /api/v1/org | Create a child organization
[**get_org**](OrganizationsApi.md#get_org) | **GET** /api/v1/org/{public_id} | Get organization information
[**list_orgs**](OrganizationsApi.md#list_orgs) | **GET** /api/v1/org | List your managed organizations
[**update_org**](OrganizationsApi.md#update_org) | **PUT** /api/v1/org/{public_id} | Update your organization
[**upload_id_p_for_org**](OrganizationsApi.md#upload_id_p_for_org) | **POST** /api/v1/org/{public_id}/idp_metadata | Upload IdP metadata



## create_child_org

> OrganizationCreateResponse create_child_org(body)

Create a child organization

Create a child organization.  This endpoint requires the [multi-organization account](https://docs.datadoghq.com/account_management/multi_organization/) feature and must be enabled by [contacting support](https://docs.datadoghq.com/help/).  Once a new child organization is created, you can interact with it by using the `org.public_id`, `pi_key.key`, and `application_key.hash` provided in the response.

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

api_instance = DatadogAPIClient::V1::OrganizationsApi.new
body = DatadogAPIClient::V1::OrganizationCreateBody.new # OrganizationCreateBody | Organization object that needs to be created

begin
  #Create a child organization
  result = api_instance.create_child_org(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling OrganizationsApi->create_child_org: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrganizationCreateBody**](OrganizationCreateBody.md)| Organization object that needs to be created | 

### Return type

[**OrganizationCreateResponse**](OrganizationCreateResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_org

> OrganizationResponse get_org(public_id)

Get organization information

Get organization information.

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

api_instance = DatadogAPIClient::V1::OrganizationsApi.new
public_id = 'abc123' # String | The `public_id` of the organization you are operating within.

begin
  #Get organization information
  result = api_instance.get_org(public_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling OrganizationsApi->get_org: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The &#x60;public_id&#x60; of the organization you are operating within. | 

### Return type

[**OrganizationResponse**](OrganizationResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_orgs

> OrganizationListResponse list_orgs

List your managed organizations

List your managed organizations.

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

api_instance = DatadogAPIClient::V1::OrganizationsApi.new

begin
  #List your managed organizations
  result = api_instance.list_orgs
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling OrganizationsApi->list_orgs: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OrganizationListResponse**](OrganizationListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_org

> OrganizationResponse update_org(public_id, body)

Update your organization

Update your organization.

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

api_instance = DatadogAPIClient::V1::OrganizationsApi.new
public_id = 'abc123' # String | The `public_id` of the organization you are operating within.
body = DatadogAPIClient::V1::Organization.new # Organization | 

begin
  #Update your organization
  result = api_instance.update_org(public_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling OrganizationsApi->update_org: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The &#x60;public_id&#x60; of the organization you are operating within. | 
 **body** | [**Organization**](Organization.md)|  | 

### Return type

[**OrganizationResponse**](OrganizationResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_id_p_for_org

> IdpResponse upload_id_p_for_org(public_id, idp_file)

Upload IdP metadata

There are a couple of options for updating the Identity Provider (IdP) metadata from your SAML IdP.  * **Multipart Form-Data**: Post the IdP metadata file using a form post.  * **XML Body:** Post the IdP metadata file as the body of the request.

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

api_instance = DatadogAPIClient::V1::OrganizationsApi.new
public_id = 'abc123' # String | The `public_id` of the organization you are operating with
idp_file = File.new('/path/to/file') # File | The path to the XML metadata file you wish to upload.

begin
  #Upload IdP metadata
  result = api_instance.upload_id_p_for_org(public_id, idp_file)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling OrganizationsApi->upload_id_p_for_org: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The &#x60;public_id&#x60; of the organization you are operating with | 
 **idp_file** | **File**| The path to the XML metadata file you wish to upload. | 

### Return type

[**IdpResponse**](IdpResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


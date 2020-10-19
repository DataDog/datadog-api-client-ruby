# DatadogAPIClient::V1::AWSIntegrationApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_aws_account**](AWSIntegrationApi.md#create_aws_account) | **POST** /api/v1/integration/aws | Create an AWS integration
[**create_new_aws_external_id**](AWSIntegrationApi.md#create_new_aws_external_id) | **PUT** /api/v1/integration/aws/generate_new_external_id | Generate a new external ID
[**delete_aws_account**](AWSIntegrationApi.md#delete_aws_account) | **DELETE** /api/v1/integration/aws | Delete an AWS integration
[**list_available_aws_namespaces**](AWSIntegrationApi.md#list_available_aws_namespaces) | **GET** /api/v1/integration/aws/available_namespace_rules | List namespace rules
[**list_aws_accounts**](AWSIntegrationApi.md#list_aws_accounts) | **GET** /api/v1/integration/aws | List all AWS integrations
[**update_aws_account**](AWSIntegrationApi.md#update_aws_account) | **PUT** /api/v1/integration/aws | Update an AWS integration



## create_aws_account

> AWSAccountCreateResponse create_aws_account(body)

Create an AWS integration

Create a Datadog-Amazon Web Services integration. Using the `POST` method updates your integration configuration by adding your new configuration to the existing one in your Datadog organization. A unique AWS Account ID for role based authentication.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AWSIntegrationApi.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS Request Object

begin
  #Create an AWS integration
  result = api_instance.create_aws_account(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSIntegrationApi->create_aws_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AWSAccount**](AWSAccount.md)| AWS Request Object | 

### Return type

[**AWSAccountCreateResponse**](AWSAccountCreateResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_new_aws_external_id

> AWSAccountCreateResponse create_new_aws_external_id(body)

Generate a new external ID

Generate a new AWS external ID for a given AWS account ID and role name pair.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AWSIntegrationApi.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | Your Datadog role delegation name. For more information about your AWS account Role name, see the [Datadog AWS integration configuration info](https://github.com/DataDog/documentation/blob/master/integrations/amazon_web_services/#installation).

begin
  #Generate a new external ID
  result = api_instance.create_new_aws_external_id(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSIntegrationApi->create_new_aws_external_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AWSAccount**](AWSAccount.md)| Your Datadog role delegation name. For more information about your AWS account Role name, see the [Datadog AWS integration configuration info](https://github.com/DataDog/documentation/blob/master/integrations/amazon_web_services/#installation). | 

### Return type

[**AWSAccountCreateResponse**](AWSAccountCreateResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_aws_account

> Object delete_aws_account(body)

Delete an AWS integration

Delete a Datadog-AWS integration matching the specified `account_id` and `role_name parameters`.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AWSIntegrationApi.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS request object

begin
  #Delete an AWS integration
  result = api_instance.delete_aws_account(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSIntegrationApi->delete_aws_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AWSAccount**](AWSAccount.md)| AWS request object | 

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_available_aws_namespaces

> Array&lt;String&gt; list_available_aws_namespaces

List namespace rules

List all namespace rules for a given Datadog-AWS integration. This endpoint takes no arguments.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AWSIntegrationApi.new

begin
  #List namespace rules
  result = api_instance.list_available_aws_namespaces
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSIntegrationApi->list_available_aws_namespaces: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_aws_accounts

> AWSAccountListResponse list_aws_accounts(opts)

List all AWS integrations

List all Datadog-AWS integrations available in your Datadog organization.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AWSIntegrationApi.new
opts = {
  account_id: 'account_id_example', # String | Only return AWS accounts that matches this `account_id`.
  role_name: 'role_name_example', # String | Only return AWS accounts that matches this role_name.
  access_key_id: 'access_key_id_example' # String | Only return AWS accounts that matches this `access_key_id`.
}

begin
  #List all AWS integrations
  result = api_instance.list_aws_accounts(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSIntegrationApi->list_aws_accounts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Only return AWS accounts that matches this &#x60;account_id&#x60;. | [optional] 
 **role_name** | **String**| Only return AWS accounts that matches this role_name. | [optional] 
 **access_key_id** | **String**| Only return AWS accounts that matches this &#x60;access_key_id&#x60;. | [optional] 

### Return type

[**AWSAccountListResponse**](AWSAccountListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_aws_account

> Object update_aws_account(body, opts)

Update an AWS integration

Update a Datadog-Amazon Web Services integration.

### Example

```ruby
# load the gem
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::AWSIntegrationApi.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS request object
opts = {
  account_id: 'account_id_example', # String | Only return AWS accounts that matches this `account_id`.
  role_name: 'role_name_example', # String | Only return AWS accounts that match this `role_name`. Required if `account_id` is specified.
  access_key_id: 'access_key_id_example' # String | Only return AWS accounts that matches this `access_key_id`. Required if none of the other two options are specified.
}

begin
  #Update an AWS integration
  result = api_instance.update_aws_account(body, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSIntegrationApi->update_aws_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AWSAccount**](AWSAccount.md)| AWS request object | 
 **account_id** | **String**| Only return AWS accounts that matches this &#x60;account_id&#x60;. | [optional] 
 **role_name** | **String**| Only return AWS accounts that match this &#x60;role_name&#x60;. Required if &#x60;account_id&#x60; is specified. | [optional] 
 **access_key_id** | **String**| Only return AWS accounts that matches this &#x60;access_key_id&#x60;. Required if none of the other two options are specified. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


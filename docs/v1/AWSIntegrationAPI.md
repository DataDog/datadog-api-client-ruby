# DatadogAPIClient::V1::AWSIntegrationAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_aws_account**](AWSIntegrationAPI.md#create_aws_account) | **POST** /api/v1/integration/aws | Create an AWS integration |
| [**create_aws_tag_filter**](AWSIntegrationAPI.md#create_aws_tag_filter) | **POST** /api/v1/integration/aws/filtering | Set an AWS tag filter |
| [**create_new_aws_external_id**](AWSIntegrationAPI.md#create_new_aws_external_id) | **PUT** /api/v1/integration/aws/generate_new_external_id | Generate a new external ID |
| [**delete_aws_account**](AWSIntegrationAPI.md#delete_aws_account) | **DELETE** /api/v1/integration/aws | Delete an AWS integration |
| [**delete_aws_tag_filter**](AWSIntegrationAPI.md#delete_aws_tag_filter) | **DELETE** /api/v1/integration/aws/filtering | Delete a tag filtering entry |
| [**list_available_aws_namespaces**](AWSIntegrationAPI.md#list_available_aws_namespaces) | **GET** /api/v1/integration/aws/available_namespace_rules | List namespace rules |
| [**list_aws_accounts**](AWSIntegrationAPI.md#list_aws_accounts) | **GET** /api/v1/integration/aws | List all AWS integrations |
| [**list_aws_tag_filters**](AWSIntegrationAPI.md#list_aws_tag_filters) | **GET** /api/v1/integration/aws/filtering | Get all AWS tag filters |
| [**update_aws_account**](AWSIntegrationAPI.md#update_aws_account) | **PUT** /api/v1/integration/aws | Update an AWS integration |


## create_aws_account

> <AWSAccountCreateResponse> create_aws_account(body)

Create a Datadog-Amazon Web Services integration.
Using the `POST` method updates your integration configuration
by adding your new configuration to the existing one in your Datadog organization.
A unique AWS Account ID for role based authentication.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS Request Object

begin
  # Create an AWS integration
  result = api_instance.create_aws_account(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_aws_account: #{e}"
end
```

#### Using the create_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AWSAccountCreateResponse>, Integer, Hash)> create_aws_account_with_http_info(body)

```ruby
begin
  # Create an AWS integration
  data, status_code, headers = api_instance.create_aws_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AWSAccountCreateResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSAccount**](AWSAccount.md) | AWS Request Object |  |

### Return type

[**AWSAccountCreateResponse**](AWSAccountCreateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_aws_tag_filter

> Object create_aws_tag_filter(body)

Set an AWS tag filter.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSTagFilterCreateRequest.new # AWSTagFilterCreateRequest | Set an AWS tag filter using an `aws_account_identifier`, `namespace`, and filtering string. Namespace options are `application_elb`, `elb`, `lambda`, `network_elb`, `rds`, `sqs`, and `custom`.

begin
  # Set an AWS tag filter
  result = api_instance.create_aws_tag_filter(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_aws_tag_filter: #{e}"
end
```

#### Using the create_aws_tag_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_aws_tag_filter_with_http_info(body)

```ruby
begin
  # Set an AWS tag filter
  data, status_code, headers = api_instance.create_aws_tag_filter_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_aws_tag_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSTagFilterCreateRequest**](AWSTagFilterCreateRequest.md) | Set an AWS tag filter using an &#x60;aws_account_identifier&#x60;, &#x60;namespace&#x60;, and filtering string. Namespace options are &#x60;application_elb&#x60;, &#x60;elb&#x60;, &#x60;lambda&#x60;, &#x60;network_elb&#x60;, &#x60;rds&#x60;, &#x60;sqs&#x60;, and &#x60;custom&#x60;. |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_new_aws_external_id

> <AWSAccountCreateResponse> create_new_aws_external_id(body)

Generate a new AWS external ID for a given AWS account ID and role name pair.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | Your Datadog role delegation name. For more information about your AWS account Role name, see the [Datadog AWS integration configuration info](https://github.com/DataDog/documentation/blob/master/integrations/amazon_web_services/#installation).

begin
  # Generate a new external ID
  result = api_instance.create_new_aws_external_id(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_new_aws_external_id: #{e}"
end
```

#### Using the create_new_aws_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AWSAccountCreateResponse>, Integer, Hash)> create_new_aws_external_id_with_http_info(body)

```ruby
begin
  # Generate a new external ID
  data, status_code, headers = api_instance.create_new_aws_external_id_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AWSAccountCreateResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_new_aws_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSAccount**](AWSAccount.md) | Your Datadog role delegation name. For more information about your AWS account Role name, see the [Datadog AWS integration configuration info](https://github.com/DataDog/documentation/blob/master/integrations/amazon_web_services/#installation). |  |

### Return type

[**AWSAccountCreateResponse**](AWSAccountCreateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_aws_account

> Object delete_aws_account(body)

Delete a Datadog-AWS integration matching the specified `account_id` and `role_name parameters`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS request object

begin
  # Delete an AWS integration
  result = api_instance.delete_aws_account(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->delete_aws_account: #{e}"
end
```

#### Using the delete_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_aws_account_with_http_info(body)

```ruby
begin
  # Delete an AWS integration
  data, status_code, headers = api_instance.delete_aws_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->delete_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSAccount**](AWSAccount.md) | AWS request object |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_aws_tag_filter

> Object delete_aws_tag_filter(body)

Delete a tag filtering entry.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSTagFilterDeleteRequest.new # AWSTagFilterDeleteRequest | Delete a tag filtering entry for a given AWS account and `dd-aws` namespace.

begin
  # Delete a tag filtering entry
  result = api_instance.delete_aws_tag_filter(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->delete_aws_tag_filter: #{e}"
end
```

#### Using the delete_aws_tag_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_aws_tag_filter_with_http_info(body)

```ruby
begin
  # Delete a tag filtering entry
  data, status_code, headers = api_instance.delete_aws_tag_filter_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->delete_aws_tag_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSTagFilterDeleteRequest**](AWSTagFilterDeleteRequest.md) | Delete a tag filtering entry for a given AWS account and &#x60;dd-aws&#x60; namespace. |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_available_aws_namespaces

> Array&lt;String&gt; list_available_aws_namespaces

List all namespace rules for a given Datadog-AWS integration. This endpoint takes no arguments.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new

begin
  # List namespace rules
  result = api_instance.list_available_aws_namespaces
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_available_aws_namespaces: #{e}"
end
```

#### Using the list_available_aws_namespaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> list_available_aws_namespaces_with_http_info

```ruby
begin
  # List namespace rules
  data, status_code, headers = api_instance.list_available_aws_namespaces_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_available_aws_namespaces_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_aws_accounts

> <AWSAccountListResponse> list_aws_accounts(opts)

List all Datadog-AWS integrations available in your Datadog organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
opts = {
  account_id: 'account_id_example', # String | Only return AWS accounts that matches this `account_id`.
  role_name: 'role_name_example', # String | Only return AWS accounts that matches this role_name.
  access_key_id: 'access_key_id_example' # String | Only return AWS accounts that matches this `access_key_id`.
}

begin
  # List all AWS integrations
  result = api_instance.list_aws_accounts(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_aws_accounts: #{e}"
end
```

#### Using the list_aws_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AWSAccountListResponse>, Integer, Hash)> list_aws_accounts_with_http_info(opts)

```ruby
begin
  # List all AWS integrations
  data, status_code, headers = api_instance.list_aws_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AWSAccountListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_aws_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Only return AWS accounts that matches this &#x60;account_id&#x60;. | [optional] |
| **role_name** | **String** | Only return AWS accounts that matches this role_name. | [optional] |
| **access_key_id** | **String** | Only return AWS accounts that matches this &#x60;access_key_id&#x60;. | [optional] |

### Return type

[**AWSAccountListResponse**](AWSAccountListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_aws_tag_filters

> <AWSTagFilterListResponse> list_aws_tag_filters(account_id)

Get all AWS tag filters.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
account_id = 'account_id_example' # String | Only return AWS filters that matches this `account_id`.

begin
  # Get all AWS tag filters
  result = api_instance.list_aws_tag_filters(account_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_aws_tag_filters: #{e}"
end
```

#### Using the list_aws_tag_filters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AWSTagFilterListResponse>, Integer, Hash)> list_aws_tag_filters_with_http_info(account_id)

```ruby
begin
  # Get all AWS tag filters
  data, status_code, headers = api_instance.list_aws_tag_filters_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AWSTagFilterListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_aws_tag_filters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Only return AWS filters that matches this &#x60;account_id&#x60;. |  |

### Return type

[**AWSTagFilterListResponse**](AWSTagFilterListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_aws_account

> Object update_aws_account(body, opts)

Update a Datadog-Amazon Web Services integration.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS request object
opts = {
  account_id: 'account_id_example', # String | Only return AWS accounts that matches this `account_id`.
  role_name: 'role_name_example', # String | Only return AWS accounts that match this `role_name`. Required if `account_id` is specified.
  access_key_id: 'access_key_id_example' # String | Only return AWS accounts that matches this `access_key_id`. Required if none of the other two options are specified.
}

begin
  # Update an AWS integration
  result = api_instance.update_aws_account(body, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->update_aws_account: #{e}"
end
```

#### Using the update_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_aws_account_with_http_info(body, opts)

```ruby
begin
  # Update an AWS integration
  data, status_code, headers = api_instance.update_aws_account_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->update_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSAccount**](AWSAccount.md) | AWS request object |  |
| **account_id** | **String** | Only return AWS accounts that matches this &#x60;account_id&#x60;. | [optional] |
| **role_name** | **String** | Only return AWS accounts that match this &#x60;role_name&#x60;. Required if &#x60;account_id&#x60; is specified. | [optional] |
| **access_key_id** | **String** | Only return AWS accounts that matches this &#x60;access_key_id&#x60;. Required if none of the other two options are specified. | [optional] |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# DatadogAPIClient::V1::WebhooksIntegrationAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhooks_integration**](WebhooksIntegrationAPI.md#create_webhooks_integration) | **POST** /api/v1/integration/webhooks/configuration/webhooks | Create a webhooks integration |
| [**create_webhooks_integration_custom_variable**](WebhooksIntegrationAPI.md#create_webhooks_integration_custom_variable) | **POST** /api/v1/integration/webhooks/configuration/custom-variables | Create a custom variable |
| [**delete_webhooks_integration**](WebhooksIntegrationAPI.md#delete_webhooks_integration) | **DELETE** /api/v1/integration/webhooks/configuration/webhooks/{webhook_name} | Delete a webhook |
| [**delete_webhooks_integration_custom_variable**](WebhooksIntegrationAPI.md#delete_webhooks_integration_custom_variable) | **DELETE** /api/v1/integration/webhooks/configuration/custom-variables/{custom_variable_name} | Delete a custom variable |
| [**get_webhooks_integration**](WebhooksIntegrationAPI.md#get_webhooks_integration) | **GET** /api/v1/integration/webhooks/configuration/webhooks/{webhook_name} | Get a webhook integration |
| [**get_webhooks_integration_custom_variable**](WebhooksIntegrationAPI.md#get_webhooks_integration_custom_variable) | **GET** /api/v1/integration/webhooks/configuration/custom-variables/{custom_variable_name} | Get a custom variable |
| [**update_webhooks_integration**](WebhooksIntegrationAPI.md#update_webhooks_integration) | **PUT** /api/v1/integration/webhooks/configuration/webhooks/{webhook_name} | Update a webhook |
| [**update_webhooks_integration_custom_variable**](WebhooksIntegrationAPI.md#update_webhooks_integration_custom_variable) | **PUT** /api/v1/integration/webhooks/configuration/custom-variables/{custom_variable_name} | Update a custom variable |


## create_webhooks_integration

> <WebhooksIntegration> create_webhooks_integration(body)

Creates an endpoint with the name `<WEBHOOK_NAME>`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
body = DatadogAPIClient::V1::WebhooksIntegration.new({name: 'WEBHOOK_NAME', url: 'https://example.com/webhook'}) # WebhooksIntegration | Create a webhooks integration request body.

begin
  # Create a webhooks integration
  result = api_instance.create_webhooks_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->create_webhooks_integration: #{e}"
end
```

#### Using the create_webhooks_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksIntegration>, Integer, Hash)> create_webhooks_integration_with_http_info(body)

```ruby
begin
  # Create a webhooks integration
  data, status_code, headers = api_instance.create_webhooks_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksIntegration>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->create_webhooks_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**WebhooksIntegration**](WebhooksIntegration.md) | Create a webhooks integration request body. |  |

### Return type

[**WebhooksIntegration**](WebhooksIntegration.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_webhooks_integration_custom_variable

> <WebhooksIntegrationCustomVariableResponse> create_webhooks_integration_custom_variable(body)

Creates an endpoint with the name `<CUSTOM_VARIABLE_NAME>`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
body = DatadogAPIClient::V1::WebhooksIntegrationCustomVariable.new({is_secret: true, name: 'CUSTOM_VARIABLE_NAME', value: 'CUSTOM_VARIABLE_VALUE'}) # WebhooksIntegrationCustomVariable | Define a custom variable request body.

begin
  # Create a custom variable
  result = api_instance.create_webhooks_integration_custom_variable(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->create_webhooks_integration_custom_variable: #{e}"
end
```

#### Using the create_webhooks_integration_custom_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksIntegrationCustomVariableResponse>, Integer, Hash)> create_webhooks_integration_custom_variable_with_http_info(body)

```ruby
begin
  # Create a custom variable
  data, status_code, headers = api_instance.create_webhooks_integration_custom_variable_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksIntegrationCustomVariableResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->create_webhooks_integration_custom_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**WebhooksIntegrationCustomVariable**](WebhooksIntegrationCustomVariable.md) | Define a custom variable request body. |  |

### Return type

[**WebhooksIntegrationCustomVariableResponse**](WebhooksIntegrationCustomVariableResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhooks_integration

> delete_webhooks_integration(webhook_name)

Deletes the endpoint with the name `<WEBHOOK NAME>`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
webhook_name = 'webhook_name_example' # String | The name of the webhook.

begin
  # Delete a webhook
  api_instance.delete_webhooks_integration(webhook_name)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->delete_webhooks_integration: #{e}"
end
```

#### Using the delete_webhooks_integration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhooks_integration_with_http_info(webhook_name)

```ruby
begin
  # Delete a webhook
  data, status_code, headers = api_instance.delete_webhooks_integration_with_http_info(webhook_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->delete_webhooks_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_name** | **String** | The name of the webhook. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_webhooks_integration_custom_variable

> delete_webhooks_integration_custom_variable(custom_variable_name)

Deletes the endpoint with the name `<CUSTOM_VARIABLE_NAME>`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
custom_variable_name = 'custom_variable_name_example' # String | The name of the custom variable.

begin
  # Delete a custom variable
  api_instance.delete_webhooks_integration_custom_variable(custom_variable_name)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->delete_webhooks_integration_custom_variable: #{e}"
end
```

#### Using the delete_webhooks_integration_custom_variable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhooks_integration_custom_variable_with_http_info(custom_variable_name)

```ruby
begin
  # Delete a custom variable
  data, status_code, headers = api_instance.delete_webhooks_integration_custom_variable_with_http_info(custom_variable_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->delete_webhooks_integration_custom_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_variable_name** | **String** | The name of the custom variable. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks_integration

> <WebhooksIntegration> get_webhooks_integration(webhook_name)

Gets the content of the webhook with the name `<WEBHOOK_NAME>`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
webhook_name = 'webhook_name_example' # String | The name of the webhook.

begin
  # Get a webhook integration
  result = api_instance.get_webhooks_integration(webhook_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->get_webhooks_integration: #{e}"
end
```

#### Using the get_webhooks_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksIntegration>, Integer, Hash)> get_webhooks_integration_with_http_info(webhook_name)

```ruby
begin
  # Get a webhook integration
  data, status_code, headers = api_instance.get_webhooks_integration_with_http_info(webhook_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksIntegration>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->get_webhooks_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_name** | **String** | The name of the webhook. |  |

### Return type

[**WebhooksIntegration**](WebhooksIntegration.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks_integration_custom_variable

> <WebhooksIntegrationCustomVariableResponse> get_webhooks_integration_custom_variable(custom_variable_name)

Shows the content of the custom variable with the name `<CUSTOM_VARIABLE_NAME>`.

If the custom variable is secret, the value does not return in the
response payload.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
custom_variable_name = 'custom_variable_name_example' # String | The name of the custom variable.

begin
  # Get a custom variable
  result = api_instance.get_webhooks_integration_custom_variable(custom_variable_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->get_webhooks_integration_custom_variable: #{e}"
end
```

#### Using the get_webhooks_integration_custom_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksIntegrationCustomVariableResponse>, Integer, Hash)> get_webhooks_integration_custom_variable_with_http_info(custom_variable_name)

```ruby
begin
  # Get a custom variable
  data, status_code, headers = api_instance.get_webhooks_integration_custom_variable_with_http_info(custom_variable_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksIntegrationCustomVariableResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->get_webhooks_integration_custom_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_variable_name** | **String** | The name of the custom variable. |  |

### Return type

[**WebhooksIntegrationCustomVariableResponse**](WebhooksIntegrationCustomVariableResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhooks_integration

> <WebhooksIntegration> update_webhooks_integration(webhook_name, body)

Updates the endpoint with the name `<WEBHOOK_NAME>`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
webhook_name = 'webhook_name_example' # String | The name of the webhook.
body = DatadogAPIClient::V1::WebhooksIntegrationUpdateRequest.new # WebhooksIntegrationUpdateRequest | Update an existing Datadog-Webhooks integration.

begin
  # Update a webhook
  result = api_instance.update_webhooks_integration(webhook_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->update_webhooks_integration: #{e}"
end
```

#### Using the update_webhooks_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksIntegration>, Integer, Hash)> update_webhooks_integration_with_http_info(webhook_name, body)

```ruby
begin
  # Update a webhook
  data, status_code, headers = api_instance.update_webhooks_integration_with_http_info(webhook_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksIntegration>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->update_webhooks_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_name** | **String** | The name of the webhook. |  |
| **body** | [**WebhooksIntegrationUpdateRequest**](WebhooksIntegrationUpdateRequest.md) | Update an existing Datadog-Webhooks integration. |  |

### Return type

[**WebhooksIntegration**](WebhooksIntegration.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_webhooks_integration_custom_variable

> <WebhooksIntegrationCustomVariableResponse> update_webhooks_integration_custom_variable(custom_variable_name, body)

Updates the endpoint with the name `<CUSTOM_VARIABLE_NAME>`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
custom_variable_name = 'custom_variable_name_example' # String | The name of the custom variable.
body = DatadogAPIClient::V1::WebhooksIntegrationCustomVariableUpdateRequest.new # WebhooksIntegrationCustomVariableUpdateRequest | Update an existing custom variable request body.

begin
  # Update a custom variable
  result = api_instance.update_webhooks_integration_custom_variable(custom_variable_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->update_webhooks_integration_custom_variable: #{e}"
end
```

#### Using the update_webhooks_integration_custom_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksIntegrationCustomVariableResponse>, Integer, Hash)> update_webhooks_integration_custom_variable_with_http_info(custom_variable_name, body)

```ruby
begin
  # Update a custom variable
  data, status_code, headers = api_instance.update_webhooks_integration_custom_variable_with_http_info(custom_variable_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksIntegrationCustomVariableResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->update_webhooks_integration_custom_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_variable_name** | **String** | The name of the custom variable. |  |
| **body** | [**WebhooksIntegrationCustomVariableUpdateRequest**](WebhooksIntegrationCustomVariableUpdateRequest.md) | Update an existing custom variable request body. |  |

### Return type

[**WebhooksIntegrationCustomVariableResponse**](WebhooksIntegrationCustomVariableResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


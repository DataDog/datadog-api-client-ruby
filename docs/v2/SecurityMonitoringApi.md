# DatadogAPIClient::V2::SecurityMonitoringApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_monitoring_rule**](SecurityMonitoringApi.md#create_security_monitoring_rule) | **POST** /api/v2/security_monitoring/rules | Create a detection rule |
| [**delete_security_monitoring_rule**](SecurityMonitoringApi.md#delete_security_monitoring_rule) | **DELETE** /api/v2/security_monitoring/rules/{rule_id} | Delete an existing rule |
| [**get_security_monitoring_rule**](SecurityMonitoringApi.md#get_security_monitoring_rule) | **GET** /api/v2/security_monitoring/rules/{rule_id} | Get a rule&#39;s details |
| [**list_security_monitoring_rules**](SecurityMonitoringApi.md#list_security_monitoring_rules) | **GET** /api/v2/security_monitoring/rules | List rules |
| [**list_security_monitoring_signals**](SecurityMonitoringApi.md#list_security_monitoring_signals) | **GET** /api/v2/security_monitoring/signals | Get a quick list of security signals |
| [**search_security_monitoring_signals**](SecurityMonitoringApi.md#search_security_monitoring_signals) | **POST** /api/v2/security_monitoring/signals/search | Get a list of security signals |
| [**update_security_monitoring_rule**](SecurityMonitoringApi.md#update_security_monitoring_rule) | **PUT** /api/v2/security_monitoring/rules/{rule_id} | Update an existing rule |


## create_security_monitoring_rule

> <SecurityMonitoringRuleResponse> create_security_monitoring_rule(body)

Create a detection rule

Create a detection rule.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V2::SecurityMonitoringApi.new
body = DatadogAPIClient::V2::SecurityMonitoringRuleCreatePayload.new # SecurityMonitoringRuleCreatePayload | 

begin
  # Create a detection rule
  result = api_instance.create_security_monitoring_rule(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->create_security_monitoring_rule: #{e}"
end
```

#### Using the create_security_monitoring_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityMonitoringRuleResponse>, Integer, Hash)> create_security_monitoring_rule_with_http_info(body)

```ruby
begin
  # Create a detection rule
  data, status_code, headers = api_instance.create_security_monitoring_rule_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityMonitoringRuleResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->create_security_monitoring_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SecurityMonitoringRuleCreatePayload**](SecurityMonitoringRuleCreatePayload.md) |  |  |

### Return type

[**SecurityMonitoringRuleResponse**](SecurityMonitoringRuleResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_security_monitoring_rule

> delete_security_monitoring_rule(rule_id)

Delete an existing rule

Delete an existing rule. Default rules cannot be deleted.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V2::SecurityMonitoringApi.new
rule_id = 'rule_id_example' # String | The ID of the rule.

begin
  # Delete an existing rule
  api_instance.delete_security_monitoring_rule(rule_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->delete_security_monitoring_rule: #{e}"
end
```

#### Using the delete_security_monitoring_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_monitoring_rule_with_http_info(rule_id)

```ruby
begin
  # Delete an existing rule
  data, status_code, headers = api_instance.delete_security_monitoring_rule_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->delete_security_monitoring_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The ID of the rule. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_monitoring_rule

> <SecurityMonitoringRuleResponse> get_security_monitoring_rule(rule_id)

Get a rule's details

Get a rule's details.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V2::SecurityMonitoringApi.new
rule_id = 'rule_id_example' # String | The ID of the rule.

begin
  # Get a rule's details
  result = api_instance.get_security_monitoring_rule(rule_id)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->get_security_monitoring_rule: #{e}"
end
```

#### Using the get_security_monitoring_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityMonitoringRuleResponse>, Integer, Hash)> get_security_monitoring_rule_with_http_info(rule_id)

```ruby
begin
  # Get a rule's details
  data, status_code, headers = api_instance.get_security_monitoring_rule_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityMonitoringRuleResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->get_security_monitoring_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The ID of the rule. |  |

### Return type

[**SecurityMonitoringRuleResponse**](SecurityMonitoringRuleResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_security_monitoring_rules

> <SecurityMonitoringListRulesResponse> list_security_monitoring_rules(opts)

List rules

List rules.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V2::SecurityMonitoringApi.new
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0 # Integer | Specific page number to return.
}

begin
  # List rules
  result = api_instance.list_security_monitoring_rules(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->list_security_monitoring_rules: #{e}"
end
```

#### Using the list_security_monitoring_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityMonitoringListRulesResponse>, Integer, Hash)> list_security_monitoring_rules_with_http_info(opts)

```ruby
begin
  # List rules
  data, status_code, headers = api_instance.list_security_monitoring_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityMonitoringListRulesResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->list_security_monitoring_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Size for a given page. | [optional][default to 10] |
| **page_number** | **Integer** | Specific page number to return. | [optional][default to 0] |

### Return type

[**SecurityMonitoringListRulesResponse**](SecurityMonitoringListRulesResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_security_monitoring_signals

> <SecurityMonitoringSignalsListResponse> list_security_monitoring_signals(opts)

Get a quick list of security signals

The list endpoint returns security signals that match a search query. Both this endpoint and the POST endpoint can be used interchangeably when listing security signals.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V2::SecurityMonitoringApi.new
opts = {
  filter_query: 'security:attack status:high', # String | The search query for security signals.
  filter_from: Time.parse('2019-01-02T09:42:36.320Z'), # Time | The minimum timestamp for requested security signals.
  filter_to: Time.parse('2019-01-03T09:42:36.320Z'), # Time | The maximum timestamp for requested security signals.
  sort: DatadogAPIClient::V2::SecurityMonitoringSignalsSort.new, # SecurityMonitoringSignalsSort | The order of the security signals in results.
  page_cursor: 'eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==', # String | A list of results using the cursor provided in the previous query.
  page_limit: 10 # Integer | The maximum number of security signals in the response.
}

begin
  # Get a quick list of security signals
  result = api_instance.list_security_monitoring_signals(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->list_security_monitoring_signals: #{e}"
end
```

#### Using the list_security_monitoring_signals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityMonitoringSignalsListResponse>, Integer, Hash)> list_security_monitoring_signals_with_http_info(opts)

```ruby
begin
  # Get a quick list of security signals
  data, status_code, headers = api_instance.list_security_monitoring_signals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityMonitoringSignalsListResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->list_security_monitoring_signals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_query** | **String** | The search query for security signals. | [optional] |
| **filter_from** | **Time** | The minimum timestamp for requested security signals. | [optional] |
| **filter_to** | **Time** | The maximum timestamp for requested security signals. | [optional] |
| **sort** | [**SecurityMonitoringSignalsSort**](.md) | The order of the security signals in results. | [optional] |
| **page_cursor** | **String** | A list of results using the cursor provided in the previous query. | [optional] |
| **page_limit** | **Integer** | The maximum number of security signals in the response. | [optional][default to 10] |

### Return type

[**SecurityMonitoringSignalsListResponse**](SecurityMonitoringSignalsListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_security_monitoring_signals

> <SecurityMonitoringSignalsListResponse> search_security_monitoring_signals(opts)

Get a list of security signals

Returns security signals that match a search query. Both this endpoint and the GET endpoint can be used interchangeably for listing security signals.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V2::SecurityMonitoringApi.new
opts = {
  body: DatadogAPIClient::V2::SecurityMonitoringSignalListRequest.new # SecurityMonitoringSignalListRequest | 
}

begin
  # Get a list of security signals
  result = api_instance.search_security_monitoring_signals(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->search_security_monitoring_signals: #{e}"
end
```

#### Using the search_security_monitoring_signals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityMonitoringSignalsListResponse>, Integer, Hash)> search_security_monitoring_signals_with_http_info(opts)

```ruby
begin
  # Get a list of security signals
  data, status_code, headers = api_instance.search_security_monitoring_signals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityMonitoringSignalsListResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->search_security_monitoring_signals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SecurityMonitoringSignalListRequest**](SecurityMonitoringSignalListRequest.md) |  | [optional] |

### Return type

[**SecurityMonitoringSignalsListResponse**](SecurityMonitoringSignalsListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_security_monitoring_rule

> <SecurityMonitoringRuleResponse> update_security_monitoring_rule(rule_id, body)

Update an existing rule

Update an existing rule. When updating `cases`, `queries` or `options`, the whole field must be included. For example, when modifying a query all queries must be included. Default rules can only be updated to be enabled and to change notifications.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V2::SecurityMonitoringApi.new
rule_id = 'rule_id_example' # String | The ID of the rule.
body = DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload.new # SecurityMonitoringRuleUpdatePayload | 

begin
  # Update an existing rule
  result = api_instance.update_security_monitoring_rule(rule_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->update_security_monitoring_rule: #{e}"
end
```

#### Using the update_security_monitoring_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityMonitoringRuleResponse>, Integer, Hash)> update_security_monitoring_rule_with_http_info(rule_id, body)

```ruby
begin
  # Update an existing rule
  data, status_code, headers = api_instance.update_security_monitoring_rule_with_http_info(rule_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityMonitoringRuleResponse>
rescue DatadogAPIClient::V2::ApiError => e
  puts "Error when calling SecurityMonitoringApi->update_security_monitoring_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The ID of the rule. |  |
| **body** | [**SecurityMonitoringRuleUpdatePayload**](SecurityMonitoringRuleUpdatePayload.md) |  |  |

### Return type

[**SecurityMonitoringRuleResponse**](SecurityMonitoringRuleResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


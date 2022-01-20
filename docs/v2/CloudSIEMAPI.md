# DatadogAPIClient::V2::CloudSIEMAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                                       | HTTP request                                                                               | Description                          |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ | ------------------------------------ |
| [**create_security_filter**](CloudSIEMAPI.md#create_security_filter)                         | **POST** /api/v2/security_monitoring/configuration/security_filters                        | Create a security filter             |
| [**create_security_monitoring_rule**](CloudSIEMAPI.md#create_security_monitoring_rule)       | **POST** /api/v2/security_monitoring/rules                                                 | Create a detection rule              |
| [**delete_security_filter**](CloudSIEMAPI.md#delete_security_filter)                         | **DELETE** /api/v2/security_monitoring/configuration/security_filters/{security_filter_id} | Delete a security filter             |
| [**delete_security_monitoring_rule**](CloudSIEMAPI.md#delete_security_monitoring_rule)       | **DELETE** /api/v2/security_monitoring/rules/{rule_id}                                     | Delete an existing rule              |
| [**get_security_filter**](CloudSIEMAPI.md#get_security_filter)                               | **GET** /api/v2/security_monitoring/configuration/security_filters/{security_filter_id}    | Get a security filter                |
| [**get_security_monitoring_rule**](CloudSIEMAPI.md#get_security_monitoring_rule)             | **GET** /api/v2/security_monitoring/rules/{rule_id}                                        | Get a rule&#39;s details             |
| [**list_security_filters**](CloudSIEMAPI.md#list_security_filters)                           | **GET** /api/v2/security_monitoring/configuration/security_filters                         | Get all security filters             |
| [**list_security_monitoring_rules**](CloudSIEMAPI.md#list_security_monitoring_rules)         | **GET** /api/v2/security_monitoring/rules                                                  | List rules                           |
| [**list_security_monitoring_signals**](CloudSIEMAPI.md#list_security_monitoring_signals)     | **GET** /api/v2/security_monitoring/signals                                                | Get a quick list of security signals |
| [**search_security_monitoring_signals**](CloudSIEMAPI.md#search_security_monitoring_signals) | **POST** /api/v2/security_monitoring/signals/search                                        | Get a list of security signals       |
| [**update_security_filter**](CloudSIEMAPI.md#update_security_filter)                         | **PATCH** /api/v2/security_monitoring/configuration/security_filters/{security_filter_id}  | Update a security filter             |
| [**update_security_monitoring_rule**](CloudSIEMAPI.md#update_security_monitoring_rule)       | **PUT** /api/v2/security_monitoring/rules/{rule_id}                                        | Update an existing rule              |

## create_security_filter

> <SecurityFilterResponse> create_security_filter(body)

Create a security filter.

See the [security filter guide](https://docs.datadoghq.com/security_platform/guide/how-to-setup-security-filters-using-security-monitoring-api/)
for more examples.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
body = DatadogAPIClient::V2::SecurityFilterCreateRequest.new({data: DatadogAPIClient::V2::SecurityFilterCreateData.new({attributes: DatadogAPIClient::V2::SecurityFilterCreateAttributes.new({exclusion_filters: [DatadogAPIClient::V2::SecurityFilterExclusionFilter.new({name: 'Exclude staging', query: 'source:staging'})], filtered_data_type: DatadogAPIClient::V2::SecurityFilterFilteredDataType::LOGS, is_enabled: true, name: 'Custom security filter', query: 'service:api'}), type: DatadogAPIClient::V2::SecurityFilterType::SECURITY_FILTERS})}) # SecurityFilterCreateRequest | The definition of the new security filter.

begin
  # Create a security filter
  result = api_instance.create_security_filter(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->create_security_filter: #{e}"
end
```

#### Using the create_security_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFilterResponse>, Integer, Hash)> create_security_filter_with_http_info(body)

```ruby
begin
  # Create a security filter
  data, status_code, headers = api_instance.create_security_filter_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFilterResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->create_security_filter_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                              | Description                                | Notes |
| -------- | ----------------------------------------------------------------- | ------------------------------------------ | ----- |
| **body** | [**SecurityFilterCreateRequest**](SecurityFilterCreateRequest.md) | The definition of the new security filter. |       |

### Return type

[**SecurityFilterResponse**](SecurityFilterResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## create_security_monitoring_rule

> <SecurityMonitoringRuleResponse> create_security_monitoring_rule(body)

Create a detection rule.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
body = DatadogAPIClient::V2::SecurityMonitoringRuleCreatePayload.new({cases: [DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO})], is_enabled: true, message: 'message_example', name: 'My Cloud SIEM rule.', options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new, queries: [DatadogAPIClient::V2::SecurityMonitoringRuleQueryCreate.new({query: 'a > 3'})]}) # SecurityMonitoringRuleCreatePayload |

begin
  # Create a detection rule
  result = api_instance.create_security_monitoring_rule(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->create_security_monitoring_rule: #{e}"
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->create_security_monitoring_rule_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                                              | Description | Notes |
| -------- | --------------------------------------------------------------------------------- | ----------- | ----- |
| **body** | [**SecurityMonitoringRuleCreatePayload**](SecurityMonitoringRuleCreatePayload.md) |             |       |

### Return type

[**SecurityMonitoringRuleResponse**](SecurityMonitoringRuleResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_security_filter

> delete_security_filter(security_filter_id)

Delete a specific security filter.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
security_filter_id = 'security_filter_id_example' # String | The ID of the security filter.

begin
  # Delete a security filter
  api_instance.delete_security_filter(security_filter_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->delete_security_filter: #{e}"
end
```

#### Using the delete_security_filter_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_filter_with_http_info(security_filter_id)

```ruby
begin
  # Delete a security filter
  data, status_code, headers = api_instance.delete_security_filter_with_http_info(security_filter_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->delete_security_filter_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type       | Description                    | Notes |
| ---------------------- | ---------- | ------------------------------ | ----- |
| **security_filter_id** | **String** | The ID of the security filter. |       |

### Return type

nil (empty response body)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## delete_security_monitoring_rule

> delete_security_monitoring_rule(rule_id)

Delete an existing rule. Default rules cannot be deleted.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
rule_id = 'rule_id_example' # String | The ID of the rule.

begin
  # Delete an existing rule
  api_instance.delete_security_monitoring_rule(rule_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->delete_security_monitoring_rule: #{e}"
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->delete_security_monitoring_rule_with_http_info: #{e}"
end
```

### Parameters

| Name        | Type       | Description         | Notes |
| ----------- | ---------- | ------------------- | ----- |
| **rule_id** | **String** | The ID of the rule. |       |

### Return type

nil (empty response body)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_security_filter

> <SecurityFilterResponse> get_security_filter(security_filter_id)

Get the details of a specific security filter.

See the [security filter guide](https://docs.datadoghq.com/security_platform/guide/how-to-setup-security-filters-using-security-monitoring-api/)
for more examples.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
security_filter_id = 'security_filter_id_example' # String | The ID of the security filter.

begin
  # Get a security filter
  result = api_instance.get_security_filter(security_filter_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->get_security_filter: #{e}"
end
```

#### Using the get_security_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFilterResponse>, Integer, Hash)> get_security_filter_with_http_info(security_filter_id)

```ruby
begin
  # Get a security filter
  data, status_code, headers = api_instance.get_security_filter_with_http_info(security_filter_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFilterResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->get_security_filter_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type       | Description                    | Notes |
| ---------------------- | ---------- | ------------------------------ | ----- |
| **security_filter_id** | **String** | The ID of the security filter. |       |

### Return type

[**SecurityFilterResponse**](SecurityFilterResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_security_monitoring_rule

> <SecurityMonitoringRuleResponse> get_security_monitoring_rule(rule_id)

Get a rule's details.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
rule_id = 'rule_id_example' # String | The ID of the rule.

begin
  # Get a rule's details
  result = api_instance.get_security_monitoring_rule(rule_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->get_security_monitoring_rule: #{e}"
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->get_security_monitoring_rule_with_http_info: #{e}"
end
```

### Parameters

| Name        | Type       | Description         | Notes |
| ----------- | ---------- | ------------------- | ----- |
| **rule_id** | **String** | The ID of the rule. |       |

### Return type

[**SecurityMonitoringRuleResponse**](SecurityMonitoringRuleResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_security_filters

> <SecurityFiltersResponse> list_security_filters

Get the list of configured security filters with their definitions.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new

begin
  # Get all security filters
  result = api_instance.list_security_filters
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->list_security_filters: #{e}"
end
```

#### Using the list_security_filters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFiltersResponse>, Integer, Hash)> list_security_filters_with_http_info

```ruby
begin
  # Get all security filters
  data, status_code, headers = api_instance.list_security_filters_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFiltersResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->list_security_filters_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SecurityFiltersResponse**](SecurityFiltersResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_security_monitoring_rules

> <SecurityMonitoringListRulesResponse> list_security_monitoring_rules(opts)

List rules.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0 # Integer | Specific page number to return.
}

begin
  # List rules
  result = api_instance.list_security_monitoring_rules(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->list_security_monitoring_rules: #{e}"
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->list_security_monitoring_rules_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type        | Description                     | Notes                     |
| --------------- | ----------- | ------------------------------- | ------------------------- |
| **page_size**   | **Integer** | Size for a given page.          | [optional][default to 10] |
| **page_number** | **Integer** | Specific page number to return. | [optional][default to 0]  |

### Return type

[**SecurityMonitoringListRulesResponse**](SecurityMonitoringListRulesResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_security_monitoring_signals

> <SecurityMonitoringSignalsListResponse> list_security_monitoring_signals(opts)

The list endpoint returns security signals that match a search query.
Both this endpoint and the POST endpoint can be used interchangeably when listing
security signals.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_security_monitoring_signals] = true
end

api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
opts = {
  filter_query: 'security:attack status:high', # String | The search query for security signals.
  filter_from: Time.parse('2019-01-02T09:42:36.320Z'), # Time | The minimum timestamp for requested security signals.
  filter_to: Time.parse('2019-01-03T09:42:36.320Z'), # Time | The maximum timestamp for requested security signals.
  sort: DatadogAPIClient::V2::SecurityMonitoringSignalsSort::TIMESTAMP_ASCENDING, # SecurityMonitoringSignalsSort | The order of the security signals in results.
  page_cursor: 'eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==', # String | A list of results using the cursor provided in the previous query.
  page_limit: 25 # Integer | The maximum number of security signals in the response.
}

begin
  # Get a quick list of security signals
  result = api_instance.list_security_monitoring_signals(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->list_security_monitoring_signals: #{e}"
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->list_security_monitoring_signals_with_http_info: #{e}"
end
```

### Parameters

| Name             | Type                              | Description                                                        | Notes                     |
| ---------------- | --------------------------------- | ------------------------------------------------------------------ | ------------------------- |
| **filter_query** | **String**                        | The search query for security signals.                             | [optional]                |
| **filter_from**  | **Time**                          | The minimum timestamp for requested security signals.              | [optional]                |
| **filter_to**    | **Time**                          | The maximum timestamp for requested security signals.              | [optional]                |
| **sort**         | **SecurityMonitoringSignalsSort** | The order of the security signals in results.                      | [optional]                |
| **page_cursor**  | **String**                        | A list of results using the cursor provided in the previous query. | [optional]                |
| **page_limit**   | **Integer**                       | The maximum number of security signals in the response.            | [optional][default to 10] |

### Return type

[**SecurityMonitoringSignalsListResponse**](SecurityMonitoringSignalsListResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## search_security_monitoring_signals

> <SecurityMonitoringSignalsListResponse> search_security_monitoring_signals(opts)

Returns security signals that match a search query.
Both this endpoint and the GET endpoint can be used interchangeably for listing
security signals.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:search_security_monitoring_signals] = true
end

api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
opts = {
  body: DatadogAPIClient::V2::SecurityMonitoringSignalListRequest.new # SecurityMonitoringSignalListRequest |
}

begin
  # Get a list of security signals
  result = api_instance.search_security_monitoring_signals(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->search_security_monitoring_signals: #{e}"
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->search_security_monitoring_signals_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                                              | Description | Notes      |
| -------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **body** | [**SecurityMonitoringSignalListRequest**](SecurityMonitoringSignalListRequest.md) |             | [optional] |

### Return type

[**SecurityMonitoringSignalsListResponse**](SecurityMonitoringSignalsListResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## update_security_filter

> <SecurityFilterResponse> update_security_filter(security_filter_id, body)

Update a specific security filter.
Returns the security filter object when the request is successful.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
security_filter_id = 'security_filter_id_example' # String | The ID of the security filter.
body = DatadogAPIClient::V2::SecurityFilterUpdateRequest.new({data: DatadogAPIClient::V2::SecurityFilterUpdateData.new({attributes: DatadogAPIClient::V2::SecurityFilterUpdateAttributes.new, type: DatadogAPIClient::V2::SecurityFilterType::SECURITY_FILTERS})}) # SecurityFilterUpdateRequest | New definition of the security filter.

begin
  # Update a security filter
  result = api_instance.update_security_filter(security_filter_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->update_security_filter: #{e}"
end
```

#### Using the update_security_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFilterResponse>, Integer, Hash)> update_security_filter_with_http_info(security_filter_id, body)

```ruby
begin
  # Update a security filter
  data, status_code, headers = api_instance.update_security_filter_with_http_info(security_filter_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFilterResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->update_security_filter_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type                                                              | Description                            | Notes |
| ---------------------- | ----------------------------------------------------------------- | -------------------------------------- | ----- |
| **security_filter_id** | **String**                                                        | The ID of the security filter.         |       |
| **body**               | [**SecurityFilterUpdateRequest**](SecurityFilterUpdateRequest.md) | New definition of the security filter. |       |

### Return type

[**SecurityFilterResponse**](SecurityFilterResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## update_security_monitoring_rule

> <SecurityMonitoringRuleResponse> update_security_monitoring_rule(rule_id, body)

Update an existing rule. When updating `cases`, `queries` or `options`, the whole field
must be included. For example, when modifying a query all queries must be included.
Default rules can only be updated to be enabled and to change notifications.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudSIEMAPI.new
rule_id = 'rule_id_example' # String | The ID of the rule.
body = DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload.new # SecurityMonitoringRuleUpdatePayload |

begin
  # Update an existing rule
  result = api_instance.update_security_monitoring_rule(rule_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->update_security_monitoring_rule: #{e}"
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
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudSIEMAPI->update_security_monitoring_rule_with_http_info: #{e}"
end
```

### Parameters

| Name        | Type                                                                              | Description         | Notes |
| ----------- | --------------------------------------------------------------------------------- | ------------------- | ----- |
| **rule_id** | **String**                                                                        | The ID of the rule. |       |
| **body**    | [**SecurityMonitoringRuleUpdatePayload**](SecurityMonitoringRuleUpdatePayload.md) |                     |       |

### Return type

[**SecurityMonitoringRuleResponse**](SecurityMonitoringRuleResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# DatadogAPIClient::V2::CloudWorkloadSecurityAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                                                                 | HTTP request                                                                               | Description                                   |
| ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ | --------------------------------------------- |
| [**create_cloud_workload_security_agent_rule**](CloudWorkloadSecurityAPI.md#create_cloud_workload_security_agent_rule) | **POST** /api/v2/security_monitoring/cloud_workload_security/agent_rules                   | Create a Cloud Workload Security Agent rule   |
| [**delete_cloud_workload_security_agent_rule**](CloudWorkloadSecurityAPI.md#delete_cloud_workload_security_agent_rule) | **DELETE** /api/v2/security_monitoring/cloud_workload_security/agent_rules/{agent_rule_id} | Delete a Cloud Workload Security Agent rule   |
| [**download_cloud_workload_policy_file**](CloudWorkloadSecurityAPI.md#download_cloud_workload_policy_file)             | **GET** /api/v2/security/cloud_workload/policy/download                                    | Get the latest Cloud Workload Security policy |
| [**get_cloud_workload_security_agent_rule**](CloudWorkloadSecurityAPI.md#get_cloud_workload_security_agent_rule)       | **GET** /api/v2/security_monitoring/cloud_workload_security/agent_rules/{agent_rule_id}    | Get a Cloud Workload Security Agent rule      |
| [**list_cloud_workload_security_agent_rules**](CloudWorkloadSecurityAPI.md#list_cloud_workload_security_agent_rules)   | **GET** /api/v2/security_monitoring/cloud_workload_security/agent_rules                    | Get all Cloud Workload Security Agent rules   |
| [**update_cloud_workload_security_agent_rule**](CloudWorkloadSecurityAPI.md#update_cloud_workload_security_agent_rule) | **PATCH** /api/v2/security_monitoring/cloud_workload_security/agent_rules/{agent_rule_id}  | Update a Cloud Workload Security Agent rule   |

## create_cloud_workload_security_agent_rule

> <CloudWorkloadSecurityAgentRuleResponse> create_cloud_workload_security_agent_rule(body)

Create a new Agent rule with the given parameters.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest.new({data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData.new({attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new({expression: 'exec.file.name == \"sh\"', name: 'my_agent_rule'}), type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE})}) # CloudWorkloadSecurityAgentRuleCreateRequest | The definition of the new Agent rule.

begin
  # Create a Cloud Workload Security Agent rule
  result = api_instance.create_cloud_workload_security_agent_rule(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->create_cloud_workload_security_agent_rule: #{e}"
end
```

#### Using the create_cloud_workload_security_agent_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudWorkloadSecurityAgentRuleResponse>, Integer, Hash)> create_cloud_workload_security_agent_rule_with_http_info(body)

```ruby
begin
  # Create a Cloud Workload Security Agent rule
  data, status_code, headers = api_instance.create_cloud_workload_security_agent_rule_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudWorkloadSecurityAgentRuleResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->create_cloud_workload_security_agent_rule_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                                                              | Description                           | Notes |
| -------- | ------------------------------------------------------------------------------------------------- | ------------------------------------- | ----- |
| **body** | [**CloudWorkloadSecurityAgentRuleCreateRequest**](CloudWorkloadSecurityAgentRuleCreateRequest.md) | The definition of the new Agent rule. |       |

### Return type

[**CloudWorkloadSecurityAgentRuleResponse**](CloudWorkloadSecurityAgentRuleResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_cloud_workload_security_agent_rule

> delete_cloud_workload_security_agent_rule(agent_rule_id)

Delete a specific Agent rule.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
agent_rule_id = '3b5-v82-ns6' # String | The ID of the Agent rule.

begin
  # Delete a Cloud Workload Security Agent rule
  api_instance.delete_cloud_workload_security_agent_rule(agent_rule_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->delete_cloud_workload_security_agent_rule: #{e}"
end
```

#### Using the delete_cloud_workload_security_agent_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cloud_workload_security_agent_rule_with_http_info(agent_rule_id)

```ruby
begin
  # Delete a Cloud Workload Security Agent rule
  data, status_code, headers = api_instance.delete_cloud_workload_security_agent_rule_with_http_info(agent_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->delete_cloud_workload_security_agent_rule_with_http_info: #{e}"
end
```

### Parameters

| Name              | Type       | Description               | Notes |
| ----------------- | ---------- | ------------------------- | ----- |
| **agent_rule_id** | **String** | The ID of the Agent rule. |       |

### Return type

nil (empty response body)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## download_cloud_workload_policy_file

> File download_cloud_workload_policy_file

The download endpoint generates a Cloud Workload Security policy file from your currently active
Cloud Workload Security rules, and downloads them as a .policy file. This file can then be deployed to
your agents to update the policy running in your environment.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new

begin
  # Get the latest Cloud Workload Security policy
  result = api_instance.download_cloud_workload_policy_file
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->download_cloud_workload_policy_file: #{e}"
end
```

#### Using the download_cloud_workload_policy_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_cloud_workload_policy_file_with_http_info

```ruby
begin
  # Get the latest Cloud Workload Security policy
  data, status_code, headers = api_instance.download_cloud_workload_policy_file_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->download_cloud_workload_policy_file_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**File**

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/yaml, application/json

## get_cloud_workload_security_agent_rule

> <CloudWorkloadSecurityAgentRuleResponse> get_cloud_workload_security_agent_rule(agent_rule_id)

Get the details of a specific Agent rule.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
agent_rule_id = '3b5-v82-ns6' # String | The ID of the Agent rule.

begin
  # Get a Cloud Workload Security Agent rule
  result = api_instance.get_cloud_workload_security_agent_rule(agent_rule_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->get_cloud_workload_security_agent_rule: #{e}"
end
```

#### Using the get_cloud_workload_security_agent_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudWorkloadSecurityAgentRuleResponse>, Integer, Hash)> get_cloud_workload_security_agent_rule_with_http_info(agent_rule_id)

```ruby
begin
  # Get a Cloud Workload Security Agent rule
  data, status_code, headers = api_instance.get_cloud_workload_security_agent_rule_with_http_info(agent_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudWorkloadSecurityAgentRuleResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->get_cloud_workload_security_agent_rule_with_http_info: #{e}"
end
```

### Parameters

| Name              | Type       | Description               | Notes |
| ----------------- | ---------- | ------------------------- | ----- |
| **agent_rule_id** | **String** | The ID of the Agent rule. |       |

### Return type

[**CloudWorkloadSecurityAgentRuleResponse**](CloudWorkloadSecurityAgentRuleResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_cloud_workload_security_agent_rules

> <CloudWorkloadSecurityAgentRulesListResponse> list_cloud_workload_security_agent_rules

Get the list of Agent rules.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new

begin
  # Get all Cloud Workload Security Agent rules
  result = api_instance.list_cloud_workload_security_agent_rules
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->list_cloud_workload_security_agent_rules: #{e}"
end
```

#### Using the list_cloud_workload_security_agent_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudWorkloadSecurityAgentRulesListResponse>, Integer, Hash)> list_cloud_workload_security_agent_rules_with_http_info

```ruby
begin
  # Get all Cloud Workload Security Agent rules
  data, status_code, headers = api_instance.list_cloud_workload_security_agent_rules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudWorkloadSecurityAgentRulesListResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->list_cloud_workload_security_agent_rules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CloudWorkloadSecurityAgentRulesListResponse**](CloudWorkloadSecurityAgentRulesListResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_cloud_workload_security_agent_rule

> <CloudWorkloadSecurityAgentRuleResponse> update_cloud_workload_security_agent_rule(agent_rule_id, body)

Update a specific Agent rule.
Returns the Agent rule object when the request is successful.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
agent_rule_id = '3b5-v82-ns6' # String | The ID of the Agent rule.
body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateRequest.new({data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData.new({attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes.new, type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE})}) # CloudWorkloadSecurityAgentRuleUpdateRequest | New definition of the Agent rule.

begin
  # Update a Cloud Workload Security Agent rule
  result = api_instance.update_cloud_workload_security_agent_rule(agent_rule_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->update_cloud_workload_security_agent_rule: #{e}"
end
```

#### Using the update_cloud_workload_security_agent_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudWorkloadSecurityAgentRuleResponse>, Integer, Hash)> update_cloud_workload_security_agent_rule_with_http_info(agent_rule_id, body)

```ruby
begin
  # Update a Cloud Workload Security Agent rule
  data, status_code, headers = api_instance.update_cloud_workload_security_agent_rule_with_http_info(agent_rule_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudWorkloadSecurityAgentRuleResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->update_cloud_workload_security_agent_rule_with_http_info: #{e}"
end
```

### Parameters

| Name              | Type                                                                                              | Description                       | Notes |
| ----------------- | ------------------------------------------------------------------------------------------------- | --------------------------------- | ----- |
| **agent_rule_id** | **String**                                                                                        | The ID of the Agent rule.         |       |
| **body**          | [**CloudWorkloadSecurityAgentRuleUpdateRequest**](CloudWorkloadSecurityAgentRuleUpdateRequest.md) | New definition of the Agent rule. |       |

### Return type

[**CloudWorkloadSecurityAgentRuleResponse**](CloudWorkloadSecurityAgentRuleResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

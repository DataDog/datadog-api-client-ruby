# DatadogAPIClient::V1::SyntheticsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_global_variable**](SyntheticsAPI.md#create_global_variable) | **POST** /api/v1/synthetics/variables | Create a global variable |
| [**create_private_location**](SyntheticsAPI.md#create_private_location) | **POST** /api/v1/synthetics/private-locations | Create a private location |
| [**create_synthetics_api_test**](SyntheticsAPI.md#create_synthetics_api_test) | **POST** /api/v1/synthetics/tests/api | Create an API test |
| [**create_synthetics_browser_test**](SyntheticsAPI.md#create_synthetics_browser_test) | **POST** /api/v1/synthetics/tests/browser | Create a browser test |
| [**delete_global_variable**](SyntheticsAPI.md#delete_global_variable) | **DELETE** /api/v1/synthetics/variables/{variable_id} | Delete a global variable |
| [**delete_private_location**](SyntheticsAPI.md#delete_private_location) | **DELETE** /api/v1/synthetics/private-locations/{location_id} | Delete a private location |
| [**delete_tests**](SyntheticsAPI.md#delete_tests) | **POST** /api/v1/synthetics/tests/delete | Delete tests |
| [**edit_global_variable**](SyntheticsAPI.md#edit_global_variable) | **PUT** /api/v1/synthetics/variables/{variable_id} | Edit a global variable |
| [**get_api_test**](SyntheticsAPI.md#get_api_test) | **GET** /api/v1/synthetics/tests/api/{public_id} | Get an API test |
| [**get_api_test_latest_results**](SyntheticsAPI.md#get_api_test_latest_results) | **GET** /api/v1/synthetics/tests/{public_id}/results | Get an API test&#39;s latest results summaries |
| [**get_api_test_result**](SyntheticsAPI.md#get_api_test_result) | **GET** /api/v1/synthetics/tests/{public_id}/results/{result_id} | Get an API test result |
| [**get_browser_test**](SyntheticsAPI.md#get_browser_test) | **GET** /api/v1/synthetics/tests/browser/{public_id} | Get a browser test |
| [**get_browser_test_latest_results**](SyntheticsAPI.md#get_browser_test_latest_results) | **GET** /api/v1/synthetics/tests/browser/{public_id}/results | Get a browser test&#39;s latest results summaries |
| [**get_browser_test_result**](SyntheticsAPI.md#get_browser_test_result) | **GET** /api/v1/synthetics/tests/browser/{public_id}/results/{result_id} | Get a browser test result |
| [**get_global_variable**](SyntheticsAPI.md#get_global_variable) | **GET** /api/v1/synthetics/variables/{variable_id} | Get a global variable |
| [**get_private_location**](SyntheticsAPI.md#get_private_location) | **GET** /api/v1/synthetics/private-locations/{location_id} | Get a private location |
| [**get_synthetics_ci_batch**](SyntheticsAPI.md#get_synthetics_ci_batch) | **GET** /api/v1/synthetics/ci/batch/{batch_id} | Get details of batch |
| [**get_test**](SyntheticsAPI.md#get_test) | **GET** /api/v1/synthetics/tests/{public_id} | Get a test configuration |
| [**list_global_variables**](SyntheticsAPI.md#list_global_variables) | **GET** /api/v1/synthetics/variables | Get all global variables |
| [**list_locations**](SyntheticsAPI.md#list_locations) | **GET** /api/v1/synthetics/locations | Get all locations (public and private) |
| [**list_tests**](SyntheticsAPI.md#list_tests) | **GET** /api/v1/synthetics/tests | Get the list of all tests |
| [**trigger_ci_tests**](SyntheticsAPI.md#trigger_ci_tests) | **POST** /api/v1/synthetics/tests/trigger/ci | Trigger tests from CI/CD pipelines |
| [**update_api_test**](SyntheticsAPI.md#update_api_test) | **PUT** /api/v1/synthetics/tests/api/{public_id} | Edit an API test |
| [**update_browser_test**](SyntheticsAPI.md#update_browser_test) | **PUT** /api/v1/synthetics/tests/browser/{public_id} | Edit a browser test |
| [**update_private_location**](SyntheticsAPI.md#update_private_location) | **PUT** /api/v1/synthetics/private-locations/{location_id} | Edit a private location |
| [**update_test_pause_status**](SyntheticsAPI.md#update_test_pause_status) | **PUT** /api/v1/synthetics/tests/{public_id}/status | Pause or start a test |


## create_global_variable

> <SyntheticsGlobalVariable> create_global_variable(body)

Create a Synthetics global variable.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsGlobalVariable.new({description: 'Example description', name: 'MY_VARIABLE', tags: ['tags_example'], value: DatadogAPIClient::V1::SyntheticsGlobalVariableValue.new}) # SyntheticsGlobalVariable | Details of the global variable to create.

begin
  # Create a global variable
  result = api_instance.create_global_variable(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_global_variable: #{e}"
end
```

#### Using the create_global_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsGlobalVariable>, Integer, Hash)> create_global_variable_with_http_info(body)

```ruby
begin
  # Create a global variable
  data, status_code, headers = api_instance.create_global_variable_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsGlobalVariable>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_global_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md) | Details of the global variable to create. |  |

### Return type

[**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_private_location

> <SyntheticsPrivateLocationCreationResponse> create_private_location(body)

Create a new Synthetics private location.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsPrivateLocation.new({description: 'Description of private location', name: 'New private location', tags: ['team:front']}) # SyntheticsPrivateLocation | Details of the private location to create.

begin
  # Create a private location
  result = api_instance.create_private_location(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_private_location: #{e}"
end
```

#### Using the create_private_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsPrivateLocationCreationResponse>, Integer, Hash)> create_private_location_with_http_info(body)

```ruby
begin
  # Create a private location
  data, status_code, headers = api_instance.create_private_location_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsPrivateLocationCreationResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_private_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SyntheticsPrivateLocation**](SyntheticsPrivateLocation.md) | Details of the private location to create. |  |

### Return type

[**SyntheticsPrivateLocationCreationResponse**](SyntheticsPrivateLocationCreationResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_synthetics_api_test

> <SyntheticsAPITest> create_synthetics_api_test(body)

Create a Synthetic API test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsAPITest.new # SyntheticsAPITest | Details of the test to create.

begin
  # Create an API test
  result = api_instance.create_synthetics_api_test(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_synthetics_api_test: #{e}"
end
```

#### Using the create_synthetics_api_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsAPITest>, Integer, Hash)> create_synthetics_api_test_with_http_info(body)

```ruby
begin
  # Create an API test
  data, status_code, headers = api_instance.create_synthetics_api_test_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsAPITest>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_synthetics_api_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SyntheticsAPITest**](SyntheticsAPITest.md) | Details of the test to create. |  |

### Return type

[**SyntheticsAPITest**](SyntheticsAPITest.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_synthetics_browser_test

> <SyntheticsBrowserTest> create_synthetics_browser_test(body)

Create a Synthetic browser test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsBrowserTest.new({message: 'message_example'}) # SyntheticsBrowserTest | Details of the test to create.

begin
  # Create a browser test
  result = api_instance.create_synthetics_browser_test(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_synthetics_browser_test: #{e}"
end
```

#### Using the create_synthetics_browser_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsBrowserTest>, Integer, Hash)> create_synthetics_browser_test_with_http_info(body)

```ruby
begin
  # Create a browser test
  data, status_code, headers = api_instance.create_synthetics_browser_test_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsBrowserTest>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_synthetics_browser_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SyntheticsBrowserTest**](SyntheticsBrowserTest.md) | Details of the test to create. |  |

### Return type

[**SyntheticsBrowserTest**](SyntheticsBrowserTest.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_global_variable

> delete_global_variable(variable_id)

Delete a Synthetics global variable.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
variable_id = 'variable_id_example' # String | The ID of the global variable.

begin
  # Delete a global variable
  api_instance.delete_global_variable(variable_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_global_variable: #{e}"
end
```

#### Using the delete_global_variable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_global_variable_with_http_info(variable_id)

```ruby
begin
  # Delete a global variable
  data, status_code, headers = api_instance.delete_global_variable_with_http_info(variable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_global_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variable_id** | **String** | The ID of the global variable. |  |

### Return type

nil (empty response body)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_private_location

> delete_private_location(location_id)

Delete a Synthetics private location.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
location_id = 'location_id_example' # String | The ID of the private location.

begin
  # Delete a private location
  api_instance.delete_private_location(location_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_private_location: #{e}"
end
```

#### Using the delete_private_location_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_private_location_with_http_info(location_id)

```ruby
begin
  # Delete a private location
  data, status_code, headers = api_instance.delete_private_location_with_http_info(location_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_private_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** | The ID of the private location. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tests

> <SyntheticsDeleteTestsResponse> delete_tests(body)

Delete multiple Synthetic tests by ID.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsDeleteTestsPayload.new # SyntheticsDeleteTestsPayload | Public ID list of the Synthetic tests to be deleted.

begin
  # Delete tests
  result = api_instance.delete_tests(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_tests: #{e}"
end
```

#### Using the delete_tests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsDeleteTestsResponse>, Integer, Hash)> delete_tests_with_http_info(body)

```ruby
begin
  # Delete tests
  data, status_code, headers = api_instance.delete_tests_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsDeleteTestsResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_tests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SyntheticsDeleteTestsPayload**](SyntheticsDeleteTestsPayload.md) | Public ID list of the Synthetic tests to be deleted. |  |

### Return type

[**SyntheticsDeleteTestsResponse**](SyntheticsDeleteTestsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## edit_global_variable

> <SyntheticsGlobalVariable> edit_global_variable(variable_id, body)

Edit a Synthetics global variable.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
variable_id = 'variable_id_example' # String | The ID of the global variable.
body = DatadogAPIClient::V1::SyntheticsGlobalVariable.new({description: 'Example description', name: 'MY_VARIABLE', tags: ['tags_example'], value: DatadogAPIClient::V1::SyntheticsGlobalVariableValue.new}) # SyntheticsGlobalVariable | Details of the global variable to update.

begin
  # Edit a global variable
  result = api_instance.edit_global_variable(variable_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->edit_global_variable: #{e}"
end
```

#### Using the edit_global_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsGlobalVariable>, Integer, Hash)> edit_global_variable_with_http_info(variable_id, body)

```ruby
begin
  # Edit a global variable
  data, status_code, headers = api_instance.edit_global_variable_with_http_info(variable_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsGlobalVariable>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->edit_global_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variable_id** | **String** | The ID of the global variable. |  |
| **body** | [**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md) | Details of the global variable to update. |  |

### Return type

[**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_api_test

> <SyntheticsAPITest> get_api_test(public_id)

Get the detailed configuration associated with
a Synthetic API test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.

begin
  # Get an API test
  result = api_instance.get_api_test(public_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test: #{e}"
end
```

#### Using the get_api_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsAPITest>, Integer, Hash)> get_api_test_with_http_info(public_id)

```ruby
begin
  # Get an API test
  data, status_code, headers = api_instance.get_api_test_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsAPITest>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the test to get details from. |  |

### Return type

[**SyntheticsAPITest**](SyntheticsAPITest.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_test_latest_results

> <SyntheticsGetAPITestLatestResultsResponse> get_api_test_latest_results(public_id, opts)

Get the last 50 test results summaries for a given Synthetics API test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the test for which to search results for.
opts = {
  from_ts: 789, # Integer | Timestamp in milliseconds from which to start querying results.
  to_ts: 789, # Integer | Timestamp in milliseconds up to which to query results.
  probe_dc: ['inner_example'] # Array<String> | Locations for which to query results.
}

begin
  # Get an API test's latest results summaries
  result = api_instance.get_api_test_latest_results(public_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test_latest_results: #{e}"
end
```

#### Using the get_api_test_latest_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsGetAPITestLatestResultsResponse>, Integer, Hash)> get_api_test_latest_results_with_http_info(public_id, opts)

```ruby
begin
  # Get an API test's latest results summaries
  data, status_code, headers = api_instance.get_api_test_latest_results_with_http_info(public_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsGetAPITestLatestResultsResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test_latest_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the test for which to search results for. |  |
| **from_ts** | **Integer** | Timestamp in milliseconds from which to start querying results. | [optional] |
| **to_ts** | **Integer** | Timestamp in milliseconds up to which to query results. | [optional] |
| **probe_dc** | **Array&lt;String&gt;** | Locations for which to query results. | [optional] |

### Return type

[**SyntheticsGetAPITestLatestResultsResponse**](SyntheticsGetAPITestLatestResultsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_test_result

> <SyntheticsAPITestResultFull> get_api_test_result(public_id, result_id)

Get a specific full result from a given (API) Synthetic test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the API test to which the target result belongs.
result_id = 'result_id_example' # String | The ID of the result to get.

begin
  # Get an API test result
  result = api_instance.get_api_test_result(public_id, result_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test_result: #{e}"
end
```

#### Using the get_api_test_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsAPITestResultFull>, Integer, Hash)> get_api_test_result_with_http_info(public_id, result_id)

```ruby
begin
  # Get an API test result
  data, status_code, headers = api_instance.get_api_test_result_with_http_info(public_id, result_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsAPITestResultFull>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the API test to which the target result belongs. |  |
| **result_id** | **String** | The ID of the result to get. |  |

### Return type

[**SyntheticsAPITestResultFull**](SyntheticsAPITestResultFull.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_browser_test

> <SyntheticsBrowserTest> get_browser_test(public_id)

Get the detailed configuration (including steps) associated with
a Synthetic browser test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.

begin
  # Get a browser test
  result = api_instance.get_browser_test(public_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_browser_test: #{e}"
end
```

#### Using the get_browser_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsBrowserTest>, Integer, Hash)> get_browser_test_with_http_info(public_id)

```ruby
begin
  # Get a browser test
  data, status_code, headers = api_instance.get_browser_test_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsBrowserTest>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_browser_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the test to get details from. |  |

### Return type

[**SyntheticsBrowserTest**](SyntheticsBrowserTest.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_browser_test_latest_results

> <SyntheticsGetBrowserTestLatestResultsResponse> get_browser_test_latest_results(public_id, opts)

Get the last 50 test results summaries for a given Synthetics Browser test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the browser test for which to search results for.
opts = {
  from_ts: 789, # Integer | Timestamp in milliseconds from which to start querying results.
  to_ts: 789, # Integer | Timestamp in milliseconds up to which to query results.
  probe_dc: ['inner_example'] # Array<String> | Locations for which to query results.
}

begin
  # Get a browser test's latest results summaries
  result = api_instance.get_browser_test_latest_results(public_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_browser_test_latest_results: #{e}"
end
```

#### Using the get_browser_test_latest_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsGetBrowserTestLatestResultsResponse>, Integer, Hash)> get_browser_test_latest_results_with_http_info(public_id, opts)

```ruby
begin
  # Get a browser test's latest results summaries
  data, status_code, headers = api_instance.get_browser_test_latest_results_with_http_info(public_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsGetBrowserTestLatestResultsResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_browser_test_latest_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the browser test for which to search results for. |  |
| **from_ts** | **Integer** | Timestamp in milliseconds from which to start querying results. | [optional] |
| **to_ts** | **Integer** | Timestamp in milliseconds up to which to query results. | [optional] |
| **probe_dc** | **Array&lt;String&gt;** | Locations for which to query results. | [optional] |

### Return type

[**SyntheticsGetBrowserTestLatestResultsResponse**](SyntheticsGetBrowserTestLatestResultsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_browser_test_result

> <SyntheticsBrowserTestResultFull> get_browser_test_result(public_id, result_id)

Get a specific full result from a given (browser) Synthetic test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the browser test to which the target result belongs.
result_id = 'result_id_example' # String | The ID of the result to get.

begin
  # Get a browser test result
  result = api_instance.get_browser_test_result(public_id, result_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_browser_test_result: #{e}"
end
```

#### Using the get_browser_test_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsBrowserTestResultFull>, Integer, Hash)> get_browser_test_result_with_http_info(public_id, result_id)

```ruby
begin
  # Get a browser test result
  data, status_code, headers = api_instance.get_browser_test_result_with_http_info(public_id, result_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsBrowserTestResultFull>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_browser_test_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the browser test to which the target result belongs. |  |
| **result_id** | **String** | The ID of the result to get. |  |

### Return type

[**SyntheticsBrowserTestResultFull**](SyntheticsBrowserTestResultFull.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_global_variable

> <SyntheticsGlobalVariable> get_global_variable(variable_id)

Get the detailed configuration of a global variable.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
variable_id = 'variable_id_example' # String | The ID of the global variable.

begin
  # Get a global variable
  result = api_instance.get_global_variable(variable_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_global_variable: #{e}"
end
```

#### Using the get_global_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsGlobalVariable>, Integer, Hash)> get_global_variable_with_http_info(variable_id)

```ruby
begin
  # Get a global variable
  data, status_code, headers = api_instance.get_global_variable_with_http_info(variable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsGlobalVariable>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_global_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variable_id** | **String** | The ID of the global variable. |  |

### Return type

[**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_private_location

> <SyntheticsPrivateLocation> get_private_location(location_id)

Get a Synthetics private location.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
location_id = 'location_id_example' # String | The ID of the private location.

begin
  # Get a private location
  result = api_instance.get_private_location(location_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_private_location: #{e}"
end
```

#### Using the get_private_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsPrivateLocation>, Integer, Hash)> get_private_location_with_http_info(location_id)

```ruby
begin
  # Get a private location
  data, status_code, headers = api_instance.get_private_location_with_http_info(location_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsPrivateLocation>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_private_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** | The ID of the private location. |  |

### Return type

[**SyntheticsPrivateLocation**](SyntheticsPrivateLocation.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_synthetics_ci_batch

> <SyntheticsBatchDetails> get_synthetics_ci_batch(batch_id)

Get a batch's updated details.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
batch_id = 'batch_id_example' # String | The ID of the batch.

begin
  # Get details of batch
  result = api_instance.get_synthetics_ci_batch(batch_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_synthetics_ci_batch: #{e}"
end
```

#### Using the get_synthetics_ci_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsBatchDetails>, Integer, Hash)> get_synthetics_ci_batch_with_http_info(batch_id)

```ruby
begin
  # Get details of batch
  data, status_code, headers = api_instance.get_synthetics_ci_batch_with_http_info(batch_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsBatchDetails>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_synthetics_ci_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** | The ID of the batch. |  |

### Return type

[**SyntheticsBatchDetails**](SyntheticsBatchDetails.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_test

> <SyntheticsTestDetails> get_test(public_id)

Get the detailed configuration associated with a Synthetics test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.

begin
  # Get a test configuration
  result = api_instance.get_test(public_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_test: #{e}"
end
```

#### Using the get_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsTestDetails>, Integer, Hash)> get_test_with_http_info(public_id)

```ruby
begin
  # Get a test configuration
  data, status_code, headers = api_instance.get_test_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsTestDetails>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the test to get details from. |  |

### Return type

[**SyntheticsTestDetails**](SyntheticsTestDetails.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_global_variables

> <SyntheticsListGlobalVariablesResponse> list_global_variables

Get the list of all Synthetics global variables.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

begin
  # Get all global variables
  result = api_instance.list_global_variables
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_global_variables: #{e}"
end
```

#### Using the list_global_variables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsListGlobalVariablesResponse>, Integer, Hash)> list_global_variables_with_http_info

```ruby
begin
  # Get all global variables
  data, status_code, headers = api_instance.list_global_variables_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsListGlobalVariablesResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_global_variables_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SyntheticsListGlobalVariablesResponse**](SyntheticsListGlobalVariablesResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_locations

> <SyntheticsLocations> list_locations

Get the list of public and private locations available for Synthetic
tests. No arguments required.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

begin
  # Get all locations (public and private)
  result = api_instance.list_locations
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_locations: #{e}"
end
```

#### Using the list_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsLocations>, Integer, Hash)> list_locations_with_http_info

```ruby
begin
  # Get all locations (public and private)
  data, status_code, headers = api_instance.list_locations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsLocations>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_locations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SyntheticsLocations**](SyntheticsLocations.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tests

> <SyntheticsListTestsResponse> list_tests

Get the list of all Synthetic tests.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

begin
  # Get the list of all tests
  result = api_instance.list_tests
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_tests: #{e}"
end
```

#### Using the list_tests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsListTestsResponse>, Integer, Hash)> list_tests_with_http_info

```ruby
begin
  # Get the list of all tests
  data, status_code, headers = api_instance.list_tests_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsListTestsResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_tests_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SyntheticsListTestsResponse**](SyntheticsListTestsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_ci_tests

> <SyntheticsTriggerCITestsResponse> trigger_ci_tests(body)

Trigger a set of Synthetics tests for continuous integration.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsCITestBody.new # SyntheticsCITestBody | Details of the test to trigger.

begin
  # Trigger tests from CI/CD pipelines
  result = api_instance.trigger_ci_tests(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->trigger_ci_tests: #{e}"
end
```

#### Using the trigger_ci_tests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsTriggerCITestsResponse>, Integer, Hash)> trigger_ci_tests_with_http_info(body)

```ruby
begin
  # Trigger tests from CI/CD pipelines
  data, status_code, headers = api_instance.trigger_ci_tests_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsTriggerCITestsResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->trigger_ci_tests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SyntheticsCITestBody**](SyntheticsCITestBody.md) | Details of the test to trigger. |  |

### Return type

[**SyntheticsTriggerCITestsResponse**](SyntheticsTriggerCITestsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_api_test

> <SyntheticsAPITest> update_api_test(public_id, body)

Edit the configuration of a Synthetic API test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.
body = DatadogAPIClient::V1::SyntheticsAPITest.new # SyntheticsAPITest | New test details to be saved.

begin
  # Edit an API test
  result = api_instance.update_api_test(public_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_api_test: #{e}"
end
```

#### Using the update_api_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsAPITest>, Integer, Hash)> update_api_test_with_http_info(public_id, body)

```ruby
begin
  # Edit an API test
  data, status_code, headers = api_instance.update_api_test_with_http_info(public_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsAPITest>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_api_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the test to get details from. |  |
| **body** | [**SyntheticsAPITest**](SyntheticsAPITest.md) | New test details to be saved. |  |

### Return type

[**SyntheticsAPITest**](SyntheticsAPITest.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_browser_test

> <SyntheticsBrowserTest> update_browser_test(public_id, body)

Edit the configuration of a Synthetic browser test.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.
body = DatadogAPIClient::V1::SyntheticsBrowserTest.new({message: 'message_example'}) # SyntheticsBrowserTest | New test details to be saved.

begin
  # Edit a browser test
  result = api_instance.update_browser_test(public_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_browser_test: #{e}"
end
```

#### Using the update_browser_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsBrowserTest>, Integer, Hash)> update_browser_test_with_http_info(public_id, body)

```ruby
begin
  # Edit a browser test
  data, status_code, headers = api_instance.update_browser_test_with_http_info(public_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsBrowserTest>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_browser_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the test to get details from. |  |
| **body** | [**SyntheticsBrowserTest**](SyntheticsBrowserTest.md) | New test details to be saved. |  |

### Return type

[**SyntheticsBrowserTest**](SyntheticsBrowserTest.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_private_location

> <SyntheticsPrivateLocation> update_private_location(location_id, body)

Edit a Synthetics private location.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
location_id = 'location_id_example' # String | The ID of the private location.
body = DatadogAPIClient::V1::SyntheticsPrivateLocation.new({description: 'Description of private location', name: 'New private location', tags: ['team:front']}) # SyntheticsPrivateLocation | Details of the private location to be updated.

begin
  # Edit a private location
  result = api_instance.update_private_location(location_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_private_location: #{e}"
end
```

#### Using the update_private_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyntheticsPrivateLocation>, Integer, Hash)> update_private_location_with_http_info(location_id, body)

```ruby
begin
  # Edit a private location
  data, status_code, headers = api_instance.update_private_location_with_http_info(location_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyntheticsPrivateLocation>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_private_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** | The ID of the private location. |  |
| **body** | [**SyntheticsPrivateLocation**](SyntheticsPrivateLocation.md) | Details of the private location to be updated. |  |

### Return type

[**SyntheticsPrivateLocation**](SyntheticsPrivateLocation.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_test_pause_status

> Boolean update_test_pause_status(public_id, body)

Pause or start a Synthetics test by changing the status.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the Synthetic test to update.
body = DatadogAPIClient::V1::SyntheticsUpdateTestPauseStatusPayload.new # SyntheticsUpdateTestPauseStatusPayload | Status to set the given Synthetic test to.

begin
  # Pause or start a test
  result = api_instance.update_test_pause_status(public_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_test_pause_status: #{e}"
end
```

#### Using the update_test_pause_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> update_test_pause_status_with_http_info(public_id, body)

```ruby
begin
  # Pause or start a test
  data, status_code, headers = api_instance.update_test_pause_status_with_http_info(public_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_test_pause_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | The public ID of the Synthetic test to update. |  |
| **body** | [**SyntheticsUpdateTestPauseStatusPayload**](SyntheticsUpdateTestPauseStatusPayload.md) | Status to set the given Synthetic test to. |  |

### Return type

**Boolean**

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# DatadogAPIClient::V1::SyntheticsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_global_variable**](SyntheticsApi.md#create_global_variable) | **POST** /api/v1/synthetics/variables | Create a global variable
[**create_test**](SyntheticsApi.md#create_test) | **POST** /api/v1/synthetics/tests | Create a test
[**delete_global_variable**](SyntheticsApi.md#delete_global_variable) | **DELETE** /api/v1/synthetics/variables/{variable_id} | Delete a global variable
[**delete_tests**](SyntheticsApi.md#delete_tests) | **POST** /api/v1/synthetics/tests/delete | Delete tests
[**edit_global_variable**](SyntheticsApi.md#edit_global_variable) | **PUT** /api/v1/synthetics/variables/{variable_id} | Edit a global variable
[**get_api_test_latest_results**](SyntheticsApi.md#get_api_test_latest_results) | **GET** /api/v1/synthetics/tests/{public_id}/results | Get the test&#39;s latest results summaries (API)
[**get_api_test_result**](SyntheticsApi.md#get_api_test_result) | **GET** /api/v1/synthetics/tests/{public_id}/results/{result_id} | Get a test result (API)
[**get_browser_test**](SyntheticsApi.md#get_browser_test) | **GET** /api/v1/synthetics/tests/browser/{public_id} | Get a test configuration (browser)
[**get_browser_test_latest_results**](SyntheticsApi.md#get_browser_test_latest_results) | **GET** /api/v1/synthetics/tests/browser/{public_id}/results | Get the test&#39;s latest results summaries (browser)
[**get_browser_test_result**](SyntheticsApi.md#get_browser_test_result) | **GET** /api/v1/synthetics/tests/browser/{public_id}/results/{result_id} | Get a test result (browser)
[**get_test**](SyntheticsApi.md#get_test) | **GET** /api/v1/synthetics/tests/{public_id} | Get a test configuration (API)
[**list_locations**](SyntheticsApi.md#list_locations) | **GET** /api/v1/synthetics/locations | Get all locations (public and private)
[**list_tests**](SyntheticsApi.md#list_tests) | **GET** /api/v1/synthetics/tests | Get a list of tests
[**trigger_ci_tests**](SyntheticsApi.md#trigger_ci_tests) | **POST** /api/v1/synthetics/tests/trigger/ci | Trigger some Synthetics tests for CI
[**update_test**](SyntheticsApi.md#update_test) | **PUT** /api/v1/synthetics/tests/{public_id} | Edit a test
[**update_test_pause_status**](SyntheticsApi.md#update_test_pause_status) | **PUT** /api/v1/synthetics/tests/{public_id}/status | Pause or start a test



## create_global_variable

> SyntheticsGlobalVariable create_global_variable(body)

Create a global variable

Create a Synthetics global variable.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
body = DatadogAPIClient::V1::SyntheticsGlobalVariable.new # SyntheticsGlobalVariable | Details of the global variable to create.

begin
  #Create a global variable
  result = api_instance.create_global_variable(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->create_global_variable: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md)| Details of the global variable to create. | 

### Return type

[**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_test

> SyntheticsTestDetails create_test(body)

Create a test

Create a Synthetic test.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
body = DatadogAPIClient::V1::SyntheticsTestDetails.new # SyntheticsTestDetails | Details of the test to create.

begin
  #Create a test
  result = api_instance.create_test(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->create_test: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SyntheticsTestDetails**](SyntheticsTestDetails.md)| Details of the test to create. | 

### Return type

[**SyntheticsTestDetails**](SyntheticsTestDetails.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_global_variable

> delete_global_variable(variable_id)

Delete a global variable

Delete a Synthetics global variable.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
variable_id = 'variable_id_example' # String | The ID of the global variable.

begin
  #Delete a global variable
  api_instance.delete_global_variable(variable_id)
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->delete_global_variable: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_id** | **String**| The ID of the global variable. | 

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tests

> SyntheticsDeleteTestsResponse delete_tests(body)

Delete tests

Delete multiple Synthetic tests by ID.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
body = DatadogAPIClient::V1::SyntheticsDeleteTestsPayload.new # SyntheticsDeleteTestsPayload | Public ID list of the Synthetic tests to be deleted.

begin
  #Delete tests
  result = api_instance.delete_tests(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->delete_tests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SyntheticsDeleteTestsPayload**](SyntheticsDeleteTestsPayload.md)| Public ID list of the Synthetic tests to be deleted. | 

### Return type

[**SyntheticsDeleteTestsResponse**](SyntheticsDeleteTestsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## edit_global_variable

> SyntheticsGlobalVariable edit_global_variable(variable_id, body)

Edit a global variable

Edit a Synthetics global variable.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
variable_id = 'variable_id_example' # String | The ID of the global variable.
body = DatadogAPIClient::V1::SyntheticsGlobalVariable.new # SyntheticsGlobalVariable | Details of the global variable to update.

begin
  #Edit a global variable
  result = api_instance.edit_global_variable(variable_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->edit_global_variable: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_id** | **String**| The ID of the global variable. | 
 **body** | [**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md)| Details of the global variable to update. | 

### Return type

[**SyntheticsGlobalVariable**](SyntheticsGlobalVariable.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_api_test_latest_results

> SyntheticsGetAPITestLatestResultsResponse get_api_test_latest_results(public_id, opts)

Get the test's latest results summaries (API)

Get the last 50 test results summaries for a given Synthetics API test.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
public_id = 'public_id_example' # String | The public ID of the test for which to search results for.
opts = {
  from_ts: 56, # Integer | Timestamp from which to start querying results.
  to_ts: 56, # Integer | Timestamp up to which to query results.
  probe_dc: ['probe_dc_example'] # Array<String> | Locations for which to query results.
}

begin
  #Get the test's latest results summaries (API)
  result = api_instance.get_api_test_latest_results(public_id, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->get_api_test_latest_results: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The public ID of the test for which to search results for. | 
 **from_ts** | **Integer**| Timestamp from which to start querying results. | [optional] 
 **to_ts** | **Integer**| Timestamp up to which to query results. | [optional] 
 **probe_dc** | [**Array&lt;String&gt;**](String.md)| Locations for which to query results. | [optional] 

### Return type

[**SyntheticsGetAPITestLatestResultsResponse**](SyntheticsGetAPITestLatestResultsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_test_result

> SyntheticsAPITestResultFull get_api_test_result(public_id, result_id)

Get a test result (API)

Get a specific full result from a given (API) Synthetic test.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
public_id = 'public_id_example' # String | The public ID of the API test to which the target result belongs.
result_id = 'result_id_example' # String | The ID of the result to get.

begin
  #Get a test result (API)
  result = api_instance.get_api_test_result(public_id, result_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->get_api_test_result: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The public ID of the API test to which the target result belongs. | 
 **result_id** | **String**| The ID of the result to get. | 

### Return type

[**SyntheticsAPITestResultFull**](SyntheticsAPITestResultFull.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_browser_test

> SyntheticsTestDetails get_browser_test(public_id)

Get a test configuration (browser)

Get the detailed configuration (including steps) associated with a Synthetics browser test.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.

begin
  #Get a test configuration (browser)
  result = api_instance.get_browser_test(public_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->get_browser_test: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The public ID of the test to get details from. | 

### Return type

[**SyntheticsTestDetails**](SyntheticsTestDetails.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_browser_test_latest_results

> SyntheticsGetBrowserTestLatestResultsResponse get_browser_test_latest_results(public_id, opts)

Get the test's latest results summaries (browser)

Get the last 50 test results summaries for a given Synthetics Browser test.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
public_id = 'public_id_example' # String | The public ID of the browser test for which to search results for.
opts = {
  from_ts: 56, # Integer | Timestamp from which to start querying results.
  to_ts: 56, # Integer | Timestamp up to which to query results.
  probe_dc: ['probe_dc_example'] # Array<String> | Locations for which to query results.
}

begin
  #Get the test's latest results summaries (browser)
  result = api_instance.get_browser_test_latest_results(public_id, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->get_browser_test_latest_results: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The public ID of the browser test for which to search results for. | 
 **from_ts** | **Integer**| Timestamp from which to start querying results. | [optional] 
 **to_ts** | **Integer**| Timestamp up to which to query results. | [optional] 
 **probe_dc** | [**Array&lt;String&gt;**](String.md)| Locations for which to query results. | [optional] 

### Return type

[**SyntheticsGetBrowserTestLatestResultsResponse**](SyntheticsGetBrowserTestLatestResultsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_browser_test_result

> SyntheticsBrowserTestResultFull get_browser_test_result(public_id, result_id)

Get a test result (browser)

Get a specific full result from a given (browser) Synthetic test.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
public_id = 'public_id_example' # String | The public ID of the browser test to which the target result belongs.
result_id = 'result_id_example' # String | The ID of the result to get.

begin
  #Get a test result (browser)
  result = api_instance.get_browser_test_result(public_id, result_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->get_browser_test_result: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The public ID of the browser test to which the target result belongs. | 
 **result_id** | **String**| The ID of the result to get. | 

### Return type

[**SyntheticsBrowserTestResultFull**](SyntheticsBrowserTestResultFull.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_test

> SyntheticsTestDetails get_test(public_id)

Get a test configuration (API)

Get the detailed configuration associated with a Synthetics test.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.

begin
  #Get a test configuration (API)
  result = api_instance.get_test(public_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->get_test: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The public ID of the test to get details from. | 

### Return type

[**SyntheticsTestDetails**](SyntheticsTestDetails.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_locations

> SyntheticsLocations list_locations

Get all locations (public and private)

Get the list of public and private locations available for Synthetics tests. No arguments required.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new

begin
  #Get all locations (public and private)
  result = api_instance.list_locations
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->list_locations: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SyntheticsLocations**](SyntheticsLocations.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tests

> SyntheticsListTestsResponse list_tests(opts)

Get a list of tests

Get the list of all Synthetic tests (can be filtered by type).

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
opts = {
  check_type: 'check_type_example' # String | API or browser to filter the list by test type, undefined to get the unfiltered list.
}

begin
  #Get a list of tests
  result = api_instance.list_tests(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->list_tests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_type** | **String**| API or browser to filter the list by test type, undefined to get the unfiltered list. | [optional] 

### Return type

[**SyntheticsListTestsResponse**](SyntheticsListTestsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_ci_tests

> SyntheticsTriggerCITestsResponse trigger_ci_tests(body)

Trigger some Synthetics tests for CI

Trigger a set of Synthetics tests for continuous integration

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
body = DatadogAPIClient::V1::SyntheticsCITestBody.new # SyntheticsCITestBody | Details of the test to trigger.

begin
  #Trigger some Synthetics tests for CI
  result = api_instance.trigger_ci_tests(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->trigger_ci_tests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SyntheticsCITestBody**](SyntheticsCITestBody.md)| Details of the test to trigger. | 

### Return type

[**SyntheticsTriggerCITestsResponse**](SyntheticsTriggerCITestsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_test

> SyntheticsTestDetails update_test(public_id, body)

Edit a test

Edit the configuration of a Synthetic test.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.
body = DatadogAPIClient::V1::SyntheticsTestDetails.new # SyntheticsTestDetails | New test details to be saved.

begin
  #Edit a test
  result = api_instance.update_test(public_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->update_test: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The public ID of the test to get details from. | 
 **body** | [**SyntheticsTestDetails**](SyntheticsTestDetails.md)| New test details to be saved. | 

### Return type

[**SyntheticsTestDetails**](SyntheticsTestDetails.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_test_pause_status

> Boolean update_test_pause_status(public_id, body)

Pause or start a test

Pause or start a Synthetics test by changing the status.

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

api_instance = DatadogAPIClient::V1::SyntheticsApi.new
public_id = 'public_id_example' # String | The public ID of the Synthetic test to update.
body = DatadogAPIClient::V1::SyntheticsUpdateTestPauseStatusPayload.new # SyntheticsUpdateTestPauseStatusPayload | Status to set the given Synthetic test to.

begin
  #Pause or start a test
  result = api_instance.update_test_pause_status(public_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling SyntheticsApi->update_test_pause_status: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_id** | **String**| The public ID of the Synthetic test to update. | 
 **body** | [**SyntheticsUpdateTestPauseStatusPayload**](SyntheticsUpdateTestPauseStatusPayload.md)| Status to set the given Synthetic test to. | 

### Return type

**Boolean**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


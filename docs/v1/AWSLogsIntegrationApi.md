# DatadogAPIClient::V1::AWSLogsIntegrationApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_aws_logs_lambda_async**](AWSLogsIntegrationApi.md#check_aws_logs_lambda_async) | **POST** /api/v1/integration/aws/logs/check_async | Check that an AWS Lambda Function exists |
| [**check_aws_logs_services_async**](AWSLogsIntegrationApi.md#check_aws_logs_services_async) | **POST** /api/v1/integration/aws/logs/services_async | Check permissions for log services |
| [**create_aws_lambda_arn**](AWSLogsIntegrationApi.md#create_aws_lambda_arn) | **POST** /api/v1/integration/aws/logs | Add AWS Log Lambda ARN |
| [**delete_aws_lambda_arn**](AWSLogsIntegrationApi.md#delete_aws_lambda_arn) | **DELETE** /api/v1/integration/aws/logs | Delete an AWS Logs integration |
| [**enable_aws_log_services**](AWSLogsIntegrationApi.md#enable_aws_log_services) | **POST** /api/v1/integration/aws/logs/services | Enable an AWS Logs integration |
| [**list_aws_logs_integrations**](AWSLogsIntegrationApi.md#list_aws_logs_integrations) | **GET** /api/v1/integration/aws/logs | List all AWS Logs integrations |
| [**list_aws_logs_services**](AWSLogsIntegrationApi.md#list_aws_logs_services) | **GET** /api/v1/integration/aws/logs/services | Get list of AWS log ready services |


## check_aws_logs_lambda_async

> AWSLogsAsyncResponse check_aws_logs_lambda_async(body)

Check that an AWS Lambda Function exists

Test if permissions are present to add a log-forwarding triggers for the given services and AWS account. The input is the same as for Enable an AWS service log collection. Subsequent requests will always repeat the above, so this endpoint can be polled intermittently instead of blocking.  - Returns a status of 'created' when it's checking if the Lambda exists in the account. - Returns a status of 'waiting' while checking. - Returns a status of 'checked and ok' if the Lambda exists. - Returns a status of 'error' if the Lambda does not exist.

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

api_instance = DatadogAPIClient::V1::AWSLogsIntegrationApi.new
body = DatadogAPIClient::V1::AWSAccountAndLambdaRequest.new # AWSAccountAndLambdaRequest | Check AWS Log Lambda Async request body.

begin
  #Check that an AWS Lambda Function exists
  result = api_instance.check_aws_logs_lambda_async(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSLogsIntegrationApi->check_aws_logs_lambda_async: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSAccountAndLambdaRequest**](AWSAccountAndLambdaRequest.md) | Check AWS Log Lambda Async request body. |  |

### Return type

[**AWSLogsAsyncResponse**](AWSLogsAsyncResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_aws_logs_services_async

> AWSLogsAsyncResponse check_aws_logs_services_async(body)

Check permissions for log services

Test if permissions are present to add log-forwarding triggers for the given services and AWS account. Input is the same as for `EnableAWSLogServices`. Done async, so can be repeatedly polled in a non-blocking fashion until the async request completes.  - Returns a status of `created` when it's checking if the permissions exists   in the AWS account. - Returns a status of `waiting` while checking. - Returns a status of `checked and ok` if the Lambda exists. - Returns a status of `error` if the Lambda does not exist.

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

api_instance = DatadogAPIClient::V1::AWSLogsIntegrationApi.new
body = DatadogAPIClient::V1::AWSLogsServicesRequest.new # AWSLogsServicesRequest | Check AWS Logs Async Services request body.

begin
  #Check permissions for log services
  result = api_instance.check_aws_logs_services_async(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSLogsIntegrationApi->check_aws_logs_services_async: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSLogsServicesRequest**](AWSLogsServicesRequest.md) | Check AWS Logs Async Services request body. |  |

### Return type

[**AWSLogsAsyncResponse**](AWSLogsAsyncResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_aws_lambda_arn

> Object create_aws_lambda_arn(body)

Add AWS Log Lambda ARN

Attach the Lambda ARN of the Lambda created for the Datadog-AWS log collection to your AWS account ID to enable log collection.

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

api_instance = DatadogAPIClient::V1::AWSLogsIntegrationApi.new
body = DatadogAPIClient::V1::AWSAccountAndLambdaRequest.new # AWSAccountAndLambdaRequest | AWS Log Lambda Async request body.

begin
  #Add AWS Log Lambda ARN
  result = api_instance.create_aws_lambda_arn(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSLogsIntegrationApi->create_aws_lambda_arn: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSAccountAndLambdaRequest**](AWSAccountAndLambdaRequest.md) | AWS Log Lambda Async request body. |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_aws_lambda_arn

> Object delete_aws_lambda_arn(body)

Delete an AWS Logs integration

Delete a Datadog-AWS logs configuration by removing the specific Lambda ARN associated with a given AWS account.

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

api_instance = DatadogAPIClient::V1::AWSLogsIntegrationApi.new
body = DatadogAPIClient::V1::AWSAccountAndLambdaRequest.new # AWSAccountAndLambdaRequest | Delete AWS Lambda ARN request body.

begin
  #Delete an AWS Logs integration
  result = api_instance.delete_aws_lambda_arn(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSLogsIntegrationApi->delete_aws_lambda_arn: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSAccountAndLambdaRequest**](AWSAccountAndLambdaRequest.md) | Delete AWS Lambda ARN request body. |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## enable_aws_log_services

> Object enable_aws_log_services(body)

Enable an AWS Logs integration

Enable automatic log collection for a list of services. This should be run after running `CreateAWSLambdaARN` to save the configuration.

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

api_instance = DatadogAPIClient::V1::AWSLogsIntegrationApi.new
body = DatadogAPIClient::V1::AWSLogsServicesRequest.new # AWSLogsServicesRequest | Enable AWS Log Services request body.

begin
  #Enable an AWS Logs integration
  result = api_instance.enable_aws_log_services(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSLogsIntegrationApi->enable_aws_log_services: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AWSLogsServicesRequest**](AWSLogsServicesRequest.md) | Enable AWS Log Services request body. |  |

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_aws_logs_integrations

> Array&lt;AWSLogsListResponse&gt; list_aws_logs_integrations

List all AWS Logs integrations

List all Datadog-AWS Logs integrations configured in your Datadog account.

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

api_instance = DatadogAPIClient::V1::AWSLogsIntegrationApi.new

begin
  #List all AWS Logs integrations
  result = api_instance.list_aws_logs_integrations
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSLogsIntegrationApi->list_aws_logs_integrations: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AWSLogsListResponse&gt;**](AWSLogsListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_aws_logs_services

> Array&lt;AWSLogsListServicesResponse&gt; list_aws_logs_services

Get list of AWS log ready services

Get the list of current AWS services that Datadog offers automatic log collection. Use returned service IDs with the services parameter for the Enable an AWS service log collection API endpoint.

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

api_instance = DatadogAPIClient::V1::AWSLogsIntegrationApi.new

begin
  #Get list of AWS log ready services
  result = api_instance.list_aws_logs_services
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling AWSLogsIntegrationApi->list_aws_logs_services: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AWSLogsListServicesResponse&gt;**](AWSLogsListServicesResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# DatadogAPIClient::V1::DowntimesApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_downtime**](DowntimesApi.md#cancel_downtime) | **DELETE** /api/v1/downtime/{downtime_id} | Cancel a downtime
[**cancel_downtimes_by_scope**](DowntimesApi.md#cancel_downtimes_by_scope) | **POST** /api/v1/downtime/cancel/by_scope | Cancel downtimes by scope
[**create_downtime**](DowntimesApi.md#create_downtime) | **POST** /api/v1/downtime | Schedule a downtime
[**get_downtime**](DowntimesApi.md#get_downtime) | **GET** /api/v1/downtime/{downtime_id} | Get a downtime
[**list_downtimes**](DowntimesApi.md#list_downtimes) | **GET** /api/v1/downtime | Get all downtimes
[**update_downtime**](DowntimesApi.md#update_downtime) | **PUT** /api/v1/downtime/{downtime_id} | Update a downtime



## cancel_downtime

> cancel_downtime(downtime_id)

Cancel a downtime

Cancel a downtime.

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

api_instance = DatadogAPIClient::V1::DowntimesApi.new
downtime_id = 123456 # Integer | ID of the downtime to cancel.

begin
  #Cancel a downtime
  api_instance.cancel_downtime(downtime_id)
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DowntimesApi->cancel_downtime: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downtime_id** | **Integer**| ID of the downtime to cancel. | 

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cancel_downtimes_by_scope

> CanceledDowntimesIds cancel_downtimes_by_scope(body)

Cancel downtimes by scope

Delete all downtimes that match the scope of `X`.

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

api_instance = DatadogAPIClient::V1::DowntimesApi.new
body = DatadogAPIClient::V1::CancelDowntimesByScopeRequest.new # CancelDowntimesByScopeRequest | Scope to cancel downtimes for.

begin
  #Cancel downtimes by scope
  result = api_instance.cancel_downtimes_by_scope(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DowntimesApi->cancel_downtimes_by_scope: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CancelDowntimesByScopeRequest**](CancelDowntimesByScopeRequest.md)| Scope to cancel downtimes for. | 

### Return type

[**CanceledDowntimesIds**](CanceledDowntimesIds.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_downtime

> Downtime create_downtime(body)

Schedule a downtime

Schedule a downtime.

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

api_instance = DatadogAPIClient::V1::DowntimesApi.new
body = DatadogAPIClient::V1::Downtime.new # Downtime | Schedule a downtime request body.

begin
  #Schedule a downtime
  result = api_instance.create_downtime(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DowntimesApi->create_downtime: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Downtime**](Downtime.md)| Schedule a downtime request body. | 

### Return type

[**Downtime**](Downtime.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_downtime

> Downtime get_downtime(downtime_id)

Get a downtime

Get downtime detail by `downtime_id`.

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

api_instance = DatadogAPIClient::V1::DowntimesApi.new
downtime_id = 123456 # Integer | ID of the downtime to fetch.

begin
  #Get a downtime
  result = api_instance.get_downtime(downtime_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DowntimesApi->get_downtime: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downtime_id** | **Integer**| ID of the downtime to fetch. | 

### Return type

[**Downtime**](Downtime.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_downtimes

> Array&lt;Downtime&gt; list_downtimes(opts)

Get all downtimes

Get all scheduled downtimes.

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

api_instance = DatadogAPIClient::V1::DowntimesApi.new
opts = {
  current_only: true # Boolean | Only return downtimes that are active when the request is made.
}

begin
  #Get all downtimes
  result = api_instance.list_downtimes(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DowntimesApi->list_downtimes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **current_only** | **Boolean**| Only return downtimes that are active when the request is made. | [optional] 

### Return type

[**Array&lt;Downtime&gt;**](Downtime.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_downtime

> Downtime update_downtime(downtime_id, body)

Update a downtime

Update a single downtime by `downtime_id`.

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

api_instance = DatadogAPIClient::V1::DowntimesApi.new
downtime_id = 123456 # Integer | ID of the downtime to update.
body = DatadogAPIClient::V1::Downtime.new # Downtime | Update a downtime request body.

begin
  #Update a downtime
  result = api_instance.update_downtime(downtime_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling DowntimesApi->update_downtime: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downtime_id** | **Integer**| ID of the downtime to update. | 
 **body** | [**Downtime**](Downtime.md)| Update a downtime request body. | 

### Return type

[**Downtime**](Downtime.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


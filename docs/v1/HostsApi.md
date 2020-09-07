# DatadogAPIClient::V1::HostsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_host_totals**](HostsApi.md#get_host_totals) | **GET** /api/v1/hosts/totals | Get the total number of active hosts
[**list_hosts**](HostsApi.md#list_hosts) | **GET** /api/v1/hosts | Get all hosts for your organization
[**mute_host**](HostsApi.md#mute_host) | **POST** /api/v1/host/{host_name}/mute | Mute a host
[**unmute_host**](HostsApi.md#unmute_host) | **POST** /api/v1/host/{host_name}/unmute | Unmute a host



## get_host_totals

> HostTotals get_host_totals(opts)

Get the total number of active hosts

This endpoint returns the total number of active and up hosts in your Datadog account. Active means the host has reported in the past hour, and up means it has reported in the past two hours.

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

api_instance = DatadogAPIClient::V1::HostsApi.new
opts = {
  from: 56 # Integer | Number of seconds from which you want to get total number of active hosts.
}

begin
  #Get the total number of active hosts
  result = api_instance.get_host_totals(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling HostsApi->get_host_totals: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Integer**| Number of seconds from which you want to get total number of active hosts. | [optional] 

### Return type

[**HostTotals**](HostTotals.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_hosts

> HostListResponse list_hosts(opts)

Get all hosts for your organization

This endpoint allows searching for hosts by name, alias, or tag. Hosts live within the past 3 hours are included by default. Retention is 7 days. Results are paginated with a max of 1000 results at a time.

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

api_instance = DatadogAPIClient::V1::HostsApi.new
opts = {
  filter: 'filter_example', # String | String to filter search results.
  sort_field: 'sort_field_example', # String | Sort hosts by this field.
  sort_dir: 'sort_dir_example', # String | Direction of sort. Options include `asc` and `desc`.
  start: 56, # Integer | Host result to start search from.
  count: 56, # Integer | Number of hosts to return. Max 1000.
  from: 56, # Integer | Number of seconds since UNIX epoch from which you want to search your hosts.
  include_muted_hosts_data: true, # Boolean | Include information on the muted status of hosts and when the mute expires.
  include_hosts_metadata: true # Boolean | Include additional metadata about the hosts (agent_version, machine, platform, processor, etc.).
}

begin
  #Get all hosts for your organization
  result = api_instance.list_hosts(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling HostsApi->list_hosts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| String to filter search results. | [optional] 
 **sort_field** | **String**| Sort hosts by this field. | [optional] 
 **sort_dir** | **String**| Direction of sort. Options include &#x60;asc&#x60; and &#x60;desc&#x60;. | [optional] 
 **start** | **Integer**| Host result to start search from. | [optional] 
 **count** | **Integer**| Number of hosts to return. Max 1000. | [optional] 
 **from** | **Integer**| Number of seconds since UNIX epoch from which you want to search your hosts. | [optional] 
 **include_muted_hosts_data** | **Boolean**| Include information on the muted status of hosts and when the mute expires. | [optional] 
 **include_hosts_metadata** | **Boolean**| Include additional metadata about the hosts (agent_version, machine, platform, processor, etc.). | [optional] 

### Return type

[**HostListResponse**](HostListResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mute_host

> HostMuteResponse mute_host(host_name, opts)

Mute a host

Mute a host.

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

api_instance = DatadogAPIClient::V1::HostsApi.new
host_name = 'host_name_example' # String | Name of the host to mute.
opts = {
  body: DatadogAPIClient::V1::HostMuteSettings.new # HostMuteSettings | Mute a host request body.
}

begin
  #Mute a host
  result = api_instance.mute_host(host_name, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling HostsApi->mute_host: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host_name** | **String**| Name of the host to mute. | 
 **body** | [**HostMuteSettings**](HostMuteSettings.md)| Mute a host request body. | [optional] 

### Return type

[**HostMuteResponse**](HostMuteResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unmute_host

> HostMuteResponse unmute_host(host_name)

Unmute a host

Unmutes a host. This endpoint takes no JSON arguments.

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

api_instance = DatadogAPIClient::V1::HostsApi.new
host_name = 'host_name_example' # String | Name of the host to unmute.

begin
  #Unmute a host
  result = api_instance.unmute_host(host_name)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Exception when calling HostsApi->unmute_host: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host_name** | **String**| Name of the host to unmute. | 

### Return type

[**HostMuteResponse**](HostMuteResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


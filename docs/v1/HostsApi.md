# DatadogAPIClient::V1::HostsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_host_totals**](HostsApi.md#get_host_totals) | **GET** /api/v1/hosts/totals | Get the total number of active hosts |
| [**list_hosts**](HostsApi.md#list_hosts) | **GET** /api/v1/hosts | Get all hosts for your organization |
| [**mute_host**](HostsApi.md#mute_host) | **POST** /api/v1/host/{host_name}/mute | Mute a host |
| [**unmute_host**](HostsApi.md#unmute_host) | **POST** /api/v1/host/{host_name}/unmute | Unmute a host |


## get_host_totals

> <HostTotals> get_host_totals(opts)

Get the total number of active hosts

This endpoint returns the total number of active and up hosts in your Datadog account. Active means the host has reported in the past hour, and up means it has reported in the past two hours.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::HostsApi.new
opts = {
  from: 789 # Integer | Number of seconds from which you want to get total number of active hosts.
}

begin
  # Get the total number of active hosts
  result = api_instance.get_host_totals(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling HostsApi->get_host_totals: #{e}"
end
```

#### Using the get_host_totals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostTotals>, Integer, Hash)> get_host_totals_with_http_info(opts)

```ruby
begin
  # Get the total number of active hosts
  data, status_code, headers = api_instance.get_host_totals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostTotals>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling HostsApi->get_host_totals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | Number of seconds from which you want to get total number of active hosts. | [optional] |

### Return type

[**HostTotals**](HostTotals.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_hosts

> <HostListResponse> list_hosts(opts)

Get all hosts for your organization

This endpoint allows searching for hosts by name, alias, or tag. Hosts live within the past 3 hours are included by default. Retention is 7 days. Results are paginated with a max of 1000 results at a time.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::HostsApi.new
opts = {
  filter: 'filter_example', # String | String to filter search results.
  sort_field: 'sort_field_example', # String | Sort hosts by this field.
  sort_dir: 'sort_dir_example', # String | Direction of sort. Options include `asc` and `desc`.
  start: 789, # Integer | Host result to start search from.
  count: 789, # Integer | Number of hosts to return. Max 1000.
  from: 789, # Integer | Number of seconds since UNIX epoch from which you want to search your hosts.
  include_muted_hosts_data: true, # Boolean | Include information on the muted status of hosts and when the mute expires.
  include_hosts_metadata: true # Boolean | Include additional metadata about the hosts (agent_version, machine, platform, processor, etc.).
}

begin
  # Get all hosts for your organization
  result = api_instance.list_hosts(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling HostsApi->list_hosts: #{e}"
end
```

#### Using the list_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostListResponse>, Integer, Hash)> list_hosts_with_http_info(opts)

```ruby
begin
  # Get all hosts for your organization
  data, status_code, headers = api_instance.list_hosts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostListResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling HostsApi->list_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | String to filter search results. | [optional] |
| **sort_field** | **String** | Sort hosts by this field. | [optional] |
| **sort_dir** | **String** | Direction of sort. Options include &#x60;asc&#x60; and &#x60;desc&#x60;. | [optional] |
| **start** | **Integer** | Host result to start search from. | [optional] |
| **count** | **Integer** | Number of hosts to return. Max 1000. | [optional] |
| **from** | **Integer** | Number of seconds since UNIX epoch from which you want to search your hosts. | [optional] |
| **include_muted_hosts_data** | **Boolean** | Include information on the muted status of hosts and when the mute expires. | [optional] |
| **include_hosts_metadata** | **Boolean** | Include additional metadata about the hosts (agent_version, machine, platform, processor, etc.). | [optional] |

### Return type

[**HostListResponse**](HostListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mute_host

> <HostMuteResponse> mute_host(host_name, body)

Mute a host

Mute a host.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::HostsApi.new
host_name = 'host_name_example' # String | Name of the host to mute.
body = DatadogAPIClient::V1::HostMuteSettings.new # HostMuteSettings | Mute a host request body.

begin
  # Mute a host
  result = api_instance.mute_host(host_name, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling HostsApi->mute_host: #{e}"
end
```

#### Using the mute_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostMuteResponse>, Integer, Hash)> mute_host_with_http_info(host_name, body)

```ruby
begin
  # Mute a host
  data, status_code, headers = api_instance.mute_host_with_http_info(host_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostMuteResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling HostsApi->mute_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_name** | **String** | Name of the host to mute. |  |
| **body** | [**HostMuteSettings**](HostMuteSettings.md) | Mute a host request body. |  |

### Return type

[**HostMuteResponse**](HostMuteResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unmute_host

> <HostMuteResponse> unmute_host(host_name)

Unmute a host

Unmutes a host. This endpoint takes no JSON arguments.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::HostsApi.new
host_name = 'host_name_example' # String | Name of the host to unmute.

begin
  # Unmute a host
  result = api_instance.unmute_host(host_name)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling HostsApi->unmute_host: #{e}"
end
```

#### Using the unmute_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostMuteResponse>, Integer, Hash)> unmute_host_with_http_info(host_name)

```ruby
begin
  # Unmute a host
  data, status_code, headers = api_instance.unmute_host_with_http_info(host_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostMuteResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling HostsApi->unmute_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_name** | **String** | Name of the host to unmute. |  |

### Return type

[**HostMuteResponse**](HostMuteResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


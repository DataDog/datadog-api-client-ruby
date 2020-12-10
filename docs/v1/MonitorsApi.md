# DatadogAPIClient::V1::MonitorsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_can_delete_monitor**](MonitorsApi.md#check_can_delete_monitor) | **GET** /api/v1/monitor/can_delete | Check if a monitor can be deleted |
| [**create_monitor**](MonitorsApi.md#create_monitor) | **POST** /api/v1/monitor | Create a monitor |
| [**delete_monitor**](MonitorsApi.md#delete_monitor) | **DELETE** /api/v1/monitor/{monitor_id} | Delete a monitor |
| [**get_monitor**](MonitorsApi.md#get_monitor) | **GET** /api/v1/monitor/{monitor_id} | Get a monitor&#39;s details |
| [**list_monitors**](MonitorsApi.md#list_monitors) | **GET** /api/v1/monitor | Get all monitor details |
| [**update_monitor**](MonitorsApi.md#update_monitor) | **PUT** /api/v1/monitor/{monitor_id} | Edit a monitor |
| [**validate_monitor**](MonitorsApi.md#validate_monitor) | **POST** /api/v1/monitor/validate | Validate a monitor |


## check_can_delete_monitor

> <CheckCanDeleteMonitorResponse> check_can_delete_monitor(monitor_ids)

Check if a monitor can be deleted

Check if the given monitors can be deleted.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V1::MonitorsApi.new
monitor_ids = [56] # Array<Integer> | The IDs of the monitor to check.

begin
  # Check if a monitor can be deleted
  result = api_instance.check_can_delete_monitor(monitor_ids)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->check_can_delete_monitor: #{e}"
end
```

#### Using the check_can_delete_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckCanDeleteMonitorResponse>, Integer, Hash)> check_can_delete_monitor_with_http_info(monitor_ids)

```ruby
begin
  # Check if a monitor can be deleted
  data, status_code, headers = api_instance.check_can_delete_monitor_with_http_info(monitor_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckCanDeleteMonitorResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->check_can_delete_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitor_ids** | [**Array&lt;Integer&gt;**](Integer.md) | The IDs of the monitor to check. |  |

### Return type

[**CheckCanDeleteMonitorResponse**](CheckCanDeleteMonitorResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_monitor

> <Monitor> create_monitor(body)

Create a monitor

Create a monitor using the specified options.  #### Monitor Types  The type of monitor chosen from:  - anomaly: `query alert` - APM: `query alert` or `trace-analytics alert` - composite: `composite` - custom: `service check` - event: `event alert` - forecast: `query alert` - host: `service check` - integration: `query alert` or `service check` - live process: `process alert` - logs: `log alert` - metric: `metric alert` - network: `service check` - outlier: `query alert` - process: `service check` - rum: `rum alert` - watchdog: `event alert`  #### Query Types  **Metric Alert Query**  Example: `time_aggr(time_window):space_aggr:metric{tags} [by {key}] operator #`  - `time_aggr`: avg, sum, max, min, change, or pct_change - `time_window`: `last_#m` (with `#` between 1 and 2880 depending on the monitor type) or `last_#h`(with `#` between 1 and 48 depending on the monitor type), or `last_1d` - `space_aggr`: avg, sum, min, or max - `tags`: one or more tags (comma-separated), or * - `key`: a 'key' in key:value tag syntax; defines a separate alert for each tag in the group (multi-alert) - `operator`: <, <=, >, >=, ==, or != - `#`: an integer or decimal number used to set the threshold  If you are using the `_change_` or `_pct_change_` time aggregator, instead use `change_aggr(time_aggr(time_window), timeshift):space_aggr:metric{tags} [by {key}] operator #` with:  - `change_aggr` change, pct_change - `time_aggr` avg, sum, max, min [Learn more](https://docs.datadoghq.com/monitors/monitor_types/#define-the-conditions) - `time_window` last\\_#m (between 1 and 2880 depending on the monitor type), last\\_#h (between 1 and 48 depending on the monitor type), or last_#d (1 or 2) - `timeshift` #m_ago (5, 10, 15, or 30), #h_ago (1, 2, or 4), or 1d_ago  Use this to create an outlier monitor using the following query: `avg(last_30m):outliers(avg:system.cpu.user{role:es-events-data} by {host}, 'dbscan', 7) > 0`  **Service Check Query**  Example: `\"check\".over(tags).last(count).count_by_status()`  - **`check`** name of the check, e.g. `datadog.agent.up` - **`tags`** one or more quoted tags (comma-separated), or \"*\". e.g.: `.over(\"env:prod\", \"role:db\")` - **`count`** must be at >= your max threshold (defined in the `options`). e.g. if you want to notify on 1 critical, 3 ok and 2 warn statuses count should be 3. It is limited to 100.  **Event Alert Query**  Example: `events('sources:nagios status:error,warning priority:normal tags: \"string query\"').rollup(\"count\").last(\"1h\")\"`  - **`event`**, the event query string: - **`string_query`** free text query to match against event title and text. - **`sources`** event sources (comma-separated). - **`status`** event statuses (comma-separated). Valid options: error, warn, and info. - **`priority`** event priorities (comma-separated). Valid options: low, normal, all. - **`host`** event reporting host (comma-separated). - **`tags`** event tags (comma-separated). - **`excluded_tags`** excluded event tags (comma-separated). - **`rollup`** the stats roll-up method. `count` is the only supported method now. - **`last`** the timeframe to roll up the counts. Examples: 45m, 4h. Supported timeframes: m, h and d. This value should not exceed 48 hours.  **Process Alert Query**  Example: `processes(search).over(tags).rollup('count').last(timeframe) operator #`  - **`search`** free text search string for querying processes. Matching processes match results on the [Live Processes](https://docs.datadoghq.com/infrastructure/process/?tab=linuxwindows) page. - **`tags`** one or more tags (comma-separated) - **`timeframe`** the timeframe to roll up the counts. Examples: 10m, 4h. Supported timeframes: s, m, h and d - **`operator`** <, <=, >, >=, ==, or != - **`#`** an integer or decimal number used to set the threshold  **Logs Alert Query**  Example: `logs(query).index(index_name).rollup(rollup_method[, measure]).last(time_window) operator #`  - **`query`** The search query - following the [Log search syntax](https://docs.datadoghq.com/logs/search_syntax/). - **`index_name`** For multi-index organizations, the log index in which the request is performed. - **`rollup_method`** The stats roll-up method - supports `count`, `avg` and `cardinality`. - **`measure`** For `avg` and cardinality `rollup_method` - specify the measure or the facet name you want to use. - **`time_window`** #m (between 1 and 1440), #h (between 1 and 24) - **`operator`** `<`, `<=`, `>`, `>=`, `==`, or `!=`. - **`#`** an integer or decimal number used to set the threshold.  **Composite Query**  Example: `12345 && 67890`, where `12345` and `67890` are the IDs of non-composite monitors  * **`name`** [*required*, *default* = **dynamic, based on query**]: The name of the alert. * **`message`** [*required*, *default* = **dynamic, based on query**]: A message to include with notifications for this monitor. Email notifications can be sent to specific users by using the same '@username' notation as events. * **`tags`** [*optional*, *default* = **empty list**]: A list of tags to associate with your monitor. When getting all monitor details via the API, use the `monitor_tags` argument to filter results by these tags. It is only available via the API and isn't visible or editable in the Datadog UI.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V1::MonitorsApi.new
body = DatadogAPIClient::V1::Monitor.new # Monitor | Create a monitor request body.

begin
  # Create a monitor
  result = api_instance.create_monitor(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->create_monitor: #{e}"
end
```

#### Using the create_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Monitor>, Integer, Hash)> create_monitor_with_http_info(body)

```ruby
begin
  # Create a monitor
  data, status_code, headers = api_instance.create_monitor_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Monitor>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->create_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Monitor**](Monitor.md) | Create a monitor request body. |  |

### Return type

[**Monitor**](Monitor.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_monitor

> <DeletedMonitor> delete_monitor(monitor_id, opts)

Delete a monitor

Delete the specified monitor

### Examples

```ruby
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

api_instance = DatadogAPIClient::V1::MonitorsApi.new
monitor_id = 56 # Integer | The ID of the monitor.
opts = {
  force: 'force_example' # String | Delete the monitor even if it's referenced by other resources (e.g. SLO, composite monitor).
}

begin
  # Delete a monitor
  result = api_instance.delete_monitor(monitor_id, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->delete_monitor: #{e}"
end
```

#### Using the delete_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedMonitor>, Integer, Hash)> delete_monitor_with_http_info(monitor_id, opts)

```ruby
begin
  # Delete a monitor
  data, status_code, headers = api_instance.delete_monitor_with_http_info(monitor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedMonitor>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->delete_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitor_id** | **Integer** | The ID of the monitor. |  |
| **force** | **String** | Delete the monitor even if it&#39;s referenced by other resources (e.g. SLO, composite monitor). | [optional] |

### Return type

[**DeletedMonitor**](DeletedMonitor.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_monitor

> <Monitor> get_monitor(monitor_id, opts)

Get a monitor's details

Get details about the specified monitor from your organization.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V1::MonitorsApi.new
monitor_id = 56 # Integer | The ID of the monitor
opts = {
  group_states: 'group_states_example' # String | When specified, shows additional information about the group states. Choose one or more from `all`, `alert`, `warn`, and `no data`.
}

begin
  # Get a monitor's details
  result = api_instance.get_monitor(monitor_id, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->get_monitor: #{e}"
end
```

#### Using the get_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Monitor>, Integer, Hash)> get_monitor_with_http_info(monitor_id, opts)

```ruby
begin
  # Get a monitor's details
  data, status_code, headers = api_instance.get_monitor_with_http_info(monitor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Monitor>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->get_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitor_id** | **Integer** | The ID of the monitor |  |
| **group_states** | **String** | When specified, shows additional information about the group states. Choose one or more from &#x60;all&#x60;, &#x60;alert&#x60;, &#x60;warn&#x60;, and &#x60;no data&#x60;. | [optional] |

### Return type

[**Monitor**](Monitor.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_monitors

> <Array<Monitor>> list_monitors(opts)

Get all monitor details

Get details about the specified monitor from your organization.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V1::MonitorsApi.new
opts = {
  group_states: 'group_states_example', # String | When specified, shows additional information about the group states. Choose one or more from `all`, `alert`, `warn`, and `no data`.
  name: 'name_example', # String | A string to filter monitors by name.
  tags: 'tags_example', # String | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope. For example, `host:host0`.
  monitor_tags: 'monitor_tags_example', # String | A comma separated list indicating what service and/or custom tags, if any, should be used to filter the list of monitors. Tags created in the Datadog UI automatically have the service key prepended. For example, `service:my-app`.
  with_downtimes: true, # Boolean | If this argument is set to true, then the returned data includes all current downtimes for each monitor.
  id_offset: 56, # Integer | Monitor ID offset.
  page: 56, # Integer | The page to start paginating from. If this argument is not specified, the request returns all monitors without pagination.
  page_size: 56 # Integer | The number of monitors to return per page. If the page argument is not specified, the default behavior returns all monitors without a `page_size` limit. However, if page is specified and `page_size` is not, the argument defaults to 100.
}

begin
  # Get all monitor details
  result = api_instance.list_monitors(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->list_monitors: #{e}"
end
```

#### Using the list_monitors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Monitor>>, Integer, Hash)> list_monitors_with_http_info(opts)

```ruby
begin
  # Get all monitor details
  data, status_code, headers = api_instance.list_monitors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Monitor>>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->list_monitors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_states** | **String** | When specified, shows additional information about the group states. Choose one or more from &#x60;all&#x60;, &#x60;alert&#x60;, &#x60;warn&#x60;, and &#x60;no data&#x60;. | [optional] |
| **name** | **String** | A string to filter monitors by name. | [optional] |
| **tags** | **String** | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope. For example, &#x60;host:host0&#x60;. | [optional] |
| **monitor_tags** | **String** | A comma separated list indicating what service and/or custom tags, if any, should be used to filter the list of monitors. Tags created in the Datadog UI automatically have the service key prepended. For example, &#x60;service:my-app&#x60;. | [optional] |
| **with_downtimes** | **Boolean** | If this argument is set to true, then the returned data includes all current downtimes for each monitor. | [optional] |
| **id_offset** | **Integer** | Monitor ID offset. | [optional] |
| **page** | **Integer** | The page to start paginating from. If this argument is not specified, the request returns all monitors without pagination. | [optional] |
| **page_size** | **Integer** | The number of monitors to return per page. If the page argument is not specified, the default behavior returns all monitors without a &#x60;page_size&#x60; limit. However, if page is specified and &#x60;page_size&#x60; is not, the argument defaults to 100. | [optional] |

### Return type

[**Array&lt;Monitor&gt;**](Monitor.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_monitor

> <Monitor> update_monitor(monitor_id, body)

Edit a monitor

Edit the specified monitor.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V1::MonitorsApi.new
monitor_id = 56 # Integer | The ID of the monitor.
body = DatadogAPIClient::V1::MonitorUpdateRequest.new # MonitorUpdateRequest | Edit a monitor request body.

begin
  # Edit a monitor
  result = api_instance.update_monitor(monitor_id, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->update_monitor: #{e}"
end
```

#### Using the update_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Monitor>, Integer, Hash)> update_monitor_with_http_info(monitor_id, body)

```ruby
begin
  # Edit a monitor
  data, status_code, headers = api_instance.update_monitor_with_http_info(monitor_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Monitor>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->update_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitor_id** | **Integer** | The ID of the monitor. |  |
| **body** | [**MonitorUpdateRequest**](MonitorUpdateRequest.md) | Edit a monitor request body. |  |

### Return type

[**Monitor**](Monitor.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_monitor

> <Monitor> validate_monitor(body)

Validate a monitor

Validate the monitor provided in the request.

### Examples

```ruby
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

api_instance = DatadogAPIClient::V1::MonitorsApi.new
body = DatadogAPIClient::V1::Monitor.new # Monitor | Monitor request object

begin
  # Validate a monitor
  result = api_instance.validate_monitor(body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->validate_monitor: #{e}"
end
```

#### Using the validate_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Monitor>, Integer, Hash)> validate_monitor_with_http_info(body)

```ruby
begin
  # Validate a monitor
  data, status_code, headers = api_instance.validate_monitor_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Monitor>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MonitorsApi->validate_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Monitor**](Monitor.md) | Monitor request object |  |

### Return type

[**Monitor**](Monitor.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


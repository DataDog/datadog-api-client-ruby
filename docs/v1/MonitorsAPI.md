# DatadogAPIClient::V1::MonitorsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                  | HTTP request                            | Description                       |
| ----------------------------------------------------------------------- | --------------------------------------- | --------------------------------- |
| [**check_can_delete_monitor**](MonitorsAPI.md#check_can_delete_monitor) | **GET** /api/v1/monitor/can_delete      | Check if a monitor can be deleted |
| [**create_monitor**](MonitorsAPI.md#create_monitor)                     | **POST** /api/v1/monitor                | Create a monitor                  |
| [**delete_monitor**](MonitorsAPI.md#delete_monitor)                     | **DELETE** /api/v1/monitor/{monitor_id} | Delete a monitor                  |
| [**get_monitor**](MonitorsAPI.md#get_monitor)                           | **GET** /api/v1/monitor/{monitor_id}    | Get a monitor&#39;s details       |
| [**list_monitors**](MonitorsAPI.md#list_monitors)                       | **GET** /api/v1/monitor                 | Get all monitor details           |
| [**search_monitor_groups**](MonitorsAPI.md#search_monitor_groups)       | **GET** /api/v1/monitor/groups/search   | Monitors group search             |
| [**search_monitors**](MonitorsAPI.md#search_monitors)                   | **GET** /api/v1/monitor/search          | Monitors search                   |
| [**update_monitor**](MonitorsAPI.md#update_monitor)                     | **PUT** /api/v1/monitor/{monitor_id}    | Edit a monitor                    |
| [**validate_monitor**](MonitorsAPI.md#validate_monitor)                 | **POST** /api/v1/monitor/validate       | Validate a monitor                |

## check_can_delete_monitor

> <CheckCanDeleteMonitorResponse> check_can_delete_monitor(monitor_ids)

Check if the given monitors can be deleted.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
monitor_ids = [3.56] # Array<Integer> | The IDs of the monitor to check.

begin
  # Check if a monitor can be deleted
  result = api_instance.check_can_delete_monitor(monitor_ids)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->check_can_delete_monitor: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->check_can_delete_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type                     | Description                      | Notes |
| --------------- | ------------------------ | -------------------------------- | ----- |
| **monitor_ids** | **Array&lt;Integer&gt;** | The IDs of the monitor to check. |       |

### Return type

[**CheckCanDeleteMonitorResponse**](CheckCanDeleteMonitorResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## create_monitor

> <Monitor> create_monitor(body)

Create a monitor using the specified options.

#### Monitor Types

The type of monitor chosen from:

- anomaly: `query alert`
- APM: `query alert` or `trace-analytics alert`
- composite: `composite`
- custom: `service check`
- event: `event alert`
- forecast: `query alert`
- host: `service check`
- integration: `query alert` or `service check`
- live process: `process alert`
- logs: `log alert`
- metric: `query alert`
- network: `service check`
- outlier: `query alert`
- process: `service check`
- rum: `rum alert`
- SLO: `slo alert`
- watchdog: `event alert`
- event-v2: `event-v2 alert`
- audit: `audit alert`

#### Query Types

**Metric Alert Query**

Example: `time_aggr(time_window):space_aggr:metric{tags} [by {key}] operator #`

- `time_aggr`: avg, sum, max, min, change, or pct_change
- `time_window`: `last_#m` (with `#` between 1 and 10080 depending on the monitor type) or `last_#h`(with `#` between 1 and 168 depending on the monitor type) or `last_1d`, or `last_1w`
- `space_aggr`: avg, sum, min, or max
- `tags`: one or more tags (comma-separated), or \*
- `key`: a 'key' in key:value tag syntax; defines a separate alert for each tag in the group (multi-alert)
- `operator`: <, <=, >, >=, ==, or !=
- `#`: an integer or decimal number used to set the threshold

If you are using the `_change_` or `_pct_change_` time aggregator, instead use `change_aggr(time_aggr(time_window), timeshift):space_aggr:metric{tags} [by {key}] operator #` with:

- `change_aggr` change, pct_change
- `time_aggr` avg, sum, max, min [Learn more](https://docs.datadoghq.com/monitors/create/types/#define-the-conditions)
- `time_window` last\_#m (between 1 and 2880 depending on the monitor type), last\_#h (between 1 and 48 depending on the monitor type), or last\_#d (1 or 2)
- `timeshift` #m_ago (5, 10, 15, or 30), #h_ago (1, 2, or 4), or 1d_ago

Use this to create an outlier monitor using the following query:
`avg(last_30m):outliers(avg:system.cpu.user{role:es-events-data} by {host}, 'dbscan', 7) > 0`

**Service Check Query**

Example: `"check".over(tags).last(count).by(group).count_by_status()`

- **`check`** name of the check, e.g. `datadog.agent.up`
- **`tags`** one or more quoted tags (comma-separated), or "\*". e.g.: `.over("env:prod", "role:db")`; **`over`** cannot be blank.
- **`count`** must be at greater than or equal to your max threshold (defined in the `options`). It is limited to 100.
  For example, if you've specified to notify on 1 critical, 3 ok, and 2 warn statuses, `count` should be at least 3.
- **`group`** must be specified for check monitors. Per-check grouping is already explicitly known for some service checks.
  For example, Postgres integration monitors are tagged by `db`, `host`, and `port`, and Network monitors by `host`, `instance`, and `url`. See [Service Checks](https://docs.datadoghq.com/api/latest/service-checks/) documentation for more information.

**Event Alert Query**

Example: `events('sources:nagios status:error,warning priority:normal tags: "string query"').rollup("count").last("1h")"`

- **`event`**, the event query string:
- **`string_query`** free text query to match against event title and text.
- **`sources`** event sources (comma-separated).
- **`status`** event statuses (comma-separated). Valid options: error, warn, and info.
- **`priority`** event priorities (comma-separated). Valid options: low, normal, all.
- **`host`** event reporting host (comma-separated).
- **`tags`** event tags (comma-separated).
- **`excluded_tags`** excluded event tags (comma-separated).
- **`rollup`** the stats roll-up method. `count` is the only supported method now.
- **`last`** the timeframe to roll up the counts. Examples: 45m, 4h. Supported timeframes: m, h and d. This value should not exceed 48 hours.

**NOTE** Only available on US1 and EU.

**Event V2 Alert Query**

Example: `events(query).rollup(rollup_method[, measure]).last(time_window) operator #`

- **`query`** The search query - following the [Log search syntax](https://docs.datadoghq.com/logs/search_syntax/).
- **`rollup_method`** The stats roll-up method - supports `count`, `avg` and `cardinality`.
- **`measure`** For `avg` and cardinality `rollup_method` - specify the measure or the facet name you want to use.
- **`time_window`** #m (between 1 and 2880), #h (between 1 and 48).
- **`operator`** `<`, `<=`, `>`, `>=`, `==`, or `!=`.
- **`#`** an integer or decimal number used to set the threshold.

**NOTE** Only available on US1-FED, US3, US5 and in closed beta on EU and US1.

**Process Alert Query**

Example: `processes(search).over(tags).rollup('count').last(timeframe) operator #`

- **`search`** free text search string for querying processes.
  Matching processes match results on the [Live Processes](https://docs.datadoghq.com/infrastructure/process/?tab=linuxwindows) page.
- **`tags`** one or more tags (comma-separated)
- **`timeframe`** the timeframe to roll up the counts. Examples: 10m, 4h. Supported timeframes: s, m, h and d
- **`operator`** <, <=, >, >=, ==, or !=
- **`#`** an integer or decimal number used to set the threshold

**Logs Alert Query**

Example: `logs(query).index(index_name).rollup(rollup_method[, measure]).last(time_window) operator #`

- **`query`** The search query - following the [Log search syntax](https://docs.datadoghq.com/logs/search_syntax/).
- **`index_name`** For multi-index organizations, the log index in which the request is performed.
- **`rollup_method`** The stats roll-up method - supports `count`, `avg` and `cardinality`.
- **`measure`** For `avg` and cardinality `rollup_method` - specify the measure or the facet name you want to use.
- **`time_window`** #m (between 1 and 2880), #h (between 1 and 48).
- **`operator`** `<`, `<=`, `>`, `>=`, `==`, or `!=`.
- **`#`** an integer or decimal number used to set the threshold.

**Composite Query**

Example: `12345 && 67890`, where `12345` and `67890` are the IDs of non-composite monitors

- **`name`** [*required*, *default* = **dynamic, based on query**]: The name of the alert.
- **`message`** [*required*, *default* = **dynamic, based on query**]: A message to include with notifications for this monitor.
  Email notifications can be sent to specific users by using the same '@username' notation as events.
- **`tags`** [*optional*, *default* = **empty list**]: A list of tags to associate with your monitor.
  When getting all monitor details via the API, use the `monitor_tags` argument to filter results by these tags.
  It is only available via the API and isn't visible or editable in the Datadog UI.

**SLO Alert Query**

Example: `error_budget("slo_id").over("time_window") operator #`

- **`slo_id`**: The alphanumeric SLO ID of the SLO you are configuring the alert for.
- **`time_window`**: The time window of the SLO target you wish to alert on. Valid options: `7d`, `30d`, `90d`.
- **`operator`**: `>=` or `>`

**Audit Alert Query**

Example: `audits(query).rollup(rollup_method[, measure]).last(time_window) operator #`

- **`query`** The search query - following the [Log search syntax](https://docs.datadoghq.com/logs/search_syntax/).
- **`rollup_method`** The stats roll-up method - supports `count`, `avg` and `cardinality`.
- **`measure`** For `avg` and cardinality `rollup_method` - specify the measure or the facet name you want to use.
- **`time_window`** #m (between 1 and 2880), #h (between 1 and 48).
- **`operator`** `<`, `<=`, `>`, `>=`, `==`, or `!=`.
- **`#`** an integer or decimal number used to set the threshold.

**NOTE** Only available on US1-FED and in closed beta on US1, EU, US3, and US5.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
body = DatadogAPIClient::V1::Monitor.new({query: 'avg(last_5m):sum:system.net.bytes_rcvd{host:host0} > 100', type: DatadogAPIClient::V1::MonitorType::COMPOSITE}) # Monitor | Create a monitor request body.

begin
  # Create a monitor
  result = api_instance.create_monitor(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->create_monitor: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->create_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                      | Description                    | Notes |
| -------- | ------------------------- | ------------------------------ | ----- |
| **body** | [**Monitor**](Monitor.md) | Create a monitor request body. |       |

### Return type

[**Monitor**](Monitor.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_monitor

> <DeletedMonitor> delete_monitor(monitor_id, opts)

Delete the specified monitor

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
monitor_id = 789 # Integer | The ID of the monitor.
opts = {
  force: 'false' # String | Delete the monitor even if it's referenced by other resources (e.g. SLO, composite monitor).
}

begin
  # Delete a monitor
  result = api_instance.delete_monitor(monitor_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->delete_monitor: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->delete_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type        | Description                                                                                      | Notes      |
| -------------- | ----------- | ------------------------------------------------------------------------------------------------ | ---------- |
| **monitor_id** | **Integer** | The ID of the monitor.                                                                           |            |
| **force**      | **String**  | Delete the monitor even if it&#39;s referenced by other resources (e.g. SLO, composite monitor). | [optional] |

### Return type

[**DeletedMonitor**](DeletedMonitor.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_monitor

> <Monitor> get_monitor(monitor_id, opts)

Get details about the specified monitor from your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
monitor_id = 789 # Integer | The ID of the monitor
opts = {
  group_states: 'group_states_example' # String | When specified, shows additional information about the group states. Choose one or more from `all`, `alert`, `warn`, and `no data`.
}

begin
  # Get a monitor's details
  result = api_instance.get_monitor(monitor_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->get_monitor: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->get_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name             | Type        | Description                                                                                                                                                                 | Notes      |
| ---------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **monitor_id**   | **Integer** | The ID of the monitor                                                                                                                                                       |            |
| **group_states** | **String**  | When specified, shows additional information about the group states. Choose one or more from &#x60;all&#x60;, &#x60;alert&#x60;, &#x60;warn&#x60;, and &#x60;no data&#x60;. | [optional] |

### Return type

[**Monitor**](Monitor.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_monitors

> <Array<Monitor>> list_monitors(opts)

Get details about the specified monitor from your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  group_states: 'alert', # String | When specified, shows additional information about the group states. Choose one or more from `all`, `alert`, `warn`, and `no data`.
  name: 'name_example', # String | A string to filter monitors by name.
  tags: 'host:host0', # String | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope. For example, `host:host0`.
  monitor_tags: 'service:my-app', # String | A comma separated list indicating what service and/or custom tags, if any, should be used to filter the list of monitors. Tags created in the Datadog UI automatically have the service key prepended. For example, `service:my-app`.
  with_downtimes: true, # Boolean | If this argument is set to true, then the returned data includes all current active downtimes for each monitor.
  id_offset: 789, # Integer | Use this parameter for paginating through large sets of monitors. Start with a value of zero, make a request, set the value to the last ID of result set, and then repeat until the response is empty.
  page: 0, # Integer | The page to start paginating from. If this argument is not specified, the request returns all monitors without pagination.
  page_size: 20 # Integer | The number of monitors to return per page. If the page argument is not specified, the default behavior returns all monitors without a `page_size` limit. However, if page is specified and `page_size` is not, the argument defaults to 100.
}

begin
  # Get all monitor details
  result = api_instance.list_monitors(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->list_monitors: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->list_monitors_with_http_info: #{e}"
end
```

### Parameters

| Name               | Type        | Description                                                                                                                                                                                                                                                      | Notes      |
| ------------------ | ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **group_states**   | **String**  | When specified, shows additional information about the group states. Choose one or more from &#x60;all&#x60;, &#x60;alert&#x60;, &#x60;warn&#x60;, and &#x60;no data&#x60;.                                                                                      | [optional] |
| **name**           | **String**  | A string to filter monitors by name.                                                                                                                                                                                                                             | [optional] |
| **tags**           | **String**  | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope. For example, &#x60;host:host0&#x60;.                                                                                                                | [optional] |
| **monitor_tags**   | **String**  | A comma separated list indicating what service and/or custom tags, if any, should be used to filter the list of monitors. Tags created in the Datadog UI automatically have the service key prepended. For example, &#x60;service:my-app&#x60;.                  | [optional] |
| **with_downtimes** | **Boolean** | If this argument is set to true, then the returned data includes all current active downtimes for each monitor.                                                                                                                                                  | [optional] |
| **id_offset**      | **Integer** | Use this parameter for paginating through large sets of monitors. Start with a value of zero, make a request, set the value to the last ID of result set, and then repeat until the response is empty.                                                           | [optional] |
| **page**           | **Integer** | The page to start paginating from. If this argument is not specified, the request returns all monitors without pagination.                                                                                                                                       | [optional] |
| **page_size**      | **Integer** | The number of monitors to return per page. If the page argument is not specified, the default behavior returns all monitors without a &#x60;page_size&#x60; limit. However, if page is specified and &#x60;page_size&#x60; is not, the argument defaults to 100. | [optional] |

### Return type

[**Array&lt;Monitor&gt;**](Monitor.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## search_monitor_groups

> <MonitorGroupSearchResponse> search_monitor_groups(opts)

Search and filter your monitor groups details.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  query: 'query_example', # String | After entering a search query in your [Manage Monitor page][1] use the query parameter value in the URL of the page as value for this parameter. Consult the dedicated [manage monitor documentation][2] page to learn more.  The query can contain any number of space-separated monitor attributes, for instance `query=\"type:metric status:alert\"`.  [1]: https://app.datadoghq.com/monitors/manage [2]: /monitors/manage/#find-the-monitors
  page: 789, # Integer | Page to start paginating from.
  per_page: 789, # Integer | Number of monitors to return per page.
  sort: 'sort_example' # String | String for sort order, composed of field and sort order separate by a comma, e.g. `name,asc`. Supported sort directions: `asc`, `desc`. Supported fields:  * `name` * `status` * `tags`
}

begin
  # Monitors group search
  result = api_instance.search_monitor_groups(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->search_monitor_groups: #{e}"
end
```

#### Using the search_monitor_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonitorGroupSearchResponse>, Integer, Hash)> search_monitor_groups_with_http_info(opts)

```ruby
begin
  # Monitors group search
  data, status_code, headers = api_instance.search_monitor_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonitorGroupSearchResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->search_monitor_groups_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Notes                     |
| ------------ | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------- |
| **query**    | **String**  | After entering a search query in your [Manage Monitor page][1] use the query parameter value in the URL of the page as value for this parameter. Consult the dedicated [manage monitor documentation][2] page to learn more. The query can contain any number of space-separated monitor attributes, for instance &#x60;query&#x3D;\&quot;type:metric status:alert\&quot;&#x60;. [1]: https://app.datadoghq.com/monitors/manage [2]: /monitors/manage/#find-the-monitors | [optional]                |
| **page**     | **Integer** | Page to start paginating from.                                                                                                                                                                                                                                                                                                                                                                                                                                           | [optional][default to 0]  |
| **per_page** | **Integer** | Number of monitors to return per page.                                                                                                                                                                                                                                                                                                                                                                                                                                   | [optional][default to 30] |
| **sort**     | **String**  | String for sort order, composed of field and sort order separate by a comma, e.g. &#x60;name,asc&#x60;. Supported sort directions: &#x60;asc&#x60;, &#x60;desc&#x60;. Supported fields: _ &#x60;name&#x60; _ &#x60;status&#x60; \* &#x60;tags&#x60;                                                                                                                                                                                                                      | [optional]                |

### Return type

[**MonitorGroupSearchResponse**](MonitorGroupSearchResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## search_monitors

> <MonitorSearchResponse> search_monitors(opts)

Search and filter your monitors details.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  query: 'query_example', # String | After entering a search query in your [Manage Monitor page][1] use the query parameter value in the URL of the page as value for this parameter. Consult the dedicated [manage monitor documentation][2] page to learn more.  The query can contain any number of space-separated monitor attributes, for instance `query=\"type:metric status:alert\"`.  [1]: https://app.datadoghq.com/monitors/manage [2]: /monitors/manage/#find-the-monitors
  page: 789, # Integer | Page to start paginating from.
  per_page: 789, # Integer | Number of monitors to return per page.
  sort: 'sort_example' # String | String for sort order, composed of field and sort order separate by a comma, e.g. `name,asc`. Supported sort directions: `asc`, `desc`. Supported fields:  * `name` * `status` * `tags`
}

begin
  # Monitors search
  result = api_instance.search_monitors(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->search_monitors: #{e}"
end
```

#### Using the search_monitors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonitorSearchResponse>, Integer, Hash)> search_monitors_with_http_info(opts)

```ruby
begin
  # Monitors search
  data, status_code, headers = api_instance.search_monitors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonitorSearchResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->search_monitors_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Notes                     |
| ------------ | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------- |
| **query**    | **String**  | After entering a search query in your [Manage Monitor page][1] use the query parameter value in the URL of the page as value for this parameter. Consult the dedicated [manage monitor documentation][2] page to learn more. The query can contain any number of space-separated monitor attributes, for instance &#x60;query&#x3D;\&quot;type:metric status:alert\&quot;&#x60;. [1]: https://app.datadoghq.com/monitors/manage [2]: /monitors/manage/#find-the-monitors | [optional]                |
| **page**     | **Integer** | Page to start paginating from.                                                                                                                                                                                                                                                                                                                                                                                                                                           | [optional][default to 0]  |
| **per_page** | **Integer** | Number of monitors to return per page.                                                                                                                                                                                                                                                                                                                                                                                                                                   | [optional][default to 30] |
| **sort**     | **String**  | String for sort order, composed of field and sort order separate by a comma, e.g. &#x60;name,asc&#x60;. Supported sort directions: &#x60;asc&#x60;, &#x60;desc&#x60;. Supported fields: _ &#x60;name&#x60; _ &#x60;status&#x60; \* &#x60;tags&#x60;                                                                                                                                                                                                                      | [optional]                |

### Return type

[**MonitorSearchResponse**](MonitorSearchResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_monitor

> <Monitor> update_monitor(monitor_id, body)

Edit the specified monitor.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
monitor_id = 789 # Integer | The ID of the monitor.
body = DatadogAPIClient::V1::MonitorUpdateRequest.new # MonitorUpdateRequest | Edit a monitor request body.

begin
  # Edit a monitor
  result = api_instance.update_monitor(monitor_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->update_monitor: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->update_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type                                                | Description                  | Notes |
| -------------- | --------------------------------------------------- | ---------------------------- | ----- |
| **monitor_id** | **Integer**                                         | The ID of the monitor.       |       |
| **body**       | [**MonitorUpdateRequest**](MonitorUpdateRequest.md) | Edit a monitor request body. |       |

### Return type

[**Monitor**](Monitor.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## validate_monitor

> Object validate_monitor(body)

Validate the monitor provided in the request.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
body = DatadogAPIClient::V1::Monitor.new({query: 'avg(last_5m):sum:system.net.bytes_rcvd{host:host0} > 100', type: DatadogAPIClient::V1::MonitorType::COMPOSITE}) # Monitor | Monitor request object

begin
  # Validate a monitor
  result = api_instance.validate_monitor(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->validate_monitor: #{e}"
end
```

#### Using the validate_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> validate_monitor_with_http_info(body)

```ruby
begin
  # Validate a monitor
  data, status_code, headers = api_instance.validate_monitor_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->validate_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                      | Description            | Notes |
| -------- | ------------------------- | ---------------------- | ----- |
| **body** | [**Monitor**](Monitor.md) | Monitor request object |       |

### Return type

**Object**

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# DatadogAPIClient::V1::UsageMeteringApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_daily_custom_reports**](UsageMeteringApi.md#get_daily_custom_reports) | **GET** /api/v1/daily_custom_reports | Get the list of available daily custom reports |
| [**get_incident_management**](UsageMeteringApi.md#get_incident_management) | **GET** /api/v1/usage/incident-management | Get hourly usage for incident management |
| [**get_ingested_spans**](UsageMeteringApi.md#get_ingested_spans) | **GET** /api/v1/usage/ingested-spans | Get hourly usage for ingested spans |
| [**get_monthly_custom_reports**](UsageMeteringApi.md#get_monthly_custom_reports) | **GET** /api/v1/monthly_custom_reports | Get the list of available monthly custom reports |
| [**get_specified_daily_custom_reports**](UsageMeteringApi.md#get_specified_daily_custom_reports) | **GET** /api/v1/daily_custom_reports/{report_id} | Get specified daily custom reports |
| [**get_specified_monthly_custom_reports**](UsageMeteringApi.md#get_specified_monthly_custom_reports) | **GET** /api/v1/monthly_custom_reports/{report_id} | Get specified monthly custom reports |
| [**get_tracing_without_limits**](UsageMeteringApi.md#get_tracing_without_limits) | **GET** /api/v1/usage/tracing-without-limits | Get hourly usage for tracing without limits |
| [**get_usage_analyzed_logs**](UsageMeteringApi.md#get_usage_analyzed_logs) | **GET** /api/v1/usage/analyzed_logs | Get hourly usage for analyzed logs |
| [**get_usage_attribution**](UsageMeteringApi.md#get_usage_attribution) | **GET** /api/v1/usage/attribution | Get Usage Attribution |
| [**get_usage_billable_summary**](UsageMeteringApi.md#get_usage_billable_summary) | **GET** /api/v1/usage/billable-summary | Get billable usage across your account |
| [**get_usage_compliance_monitoring**](UsageMeteringApi.md#get_usage_compliance_monitoring) | **GET** /api/v1/usage/compliance-monitoring | Get hourly usage for Compliance Monitoring |
| [**get_usage_fargate**](UsageMeteringApi.md#get_usage_fargate) | **GET** /api/v1/usage/fargate | Get hourly usage for Fargate |
| [**get_usage_hosts**](UsageMeteringApi.md#get_usage_hosts) | **GET** /api/v1/usage/hosts | Get hourly usage for hosts and containers |
| [**get_usage_indexed_spans**](UsageMeteringApi.md#get_usage_indexed_spans) | **GET** /api/v1/usage/indexed-spans | Get hourly usage for indexed spans |
| [**get_usage_internet_of_things**](UsageMeteringApi.md#get_usage_internet_of_things) | **GET** /api/v1/usage/iot | Get hourly usage for IoT |
| [**get_usage_lambda**](UsageMeteringApi.md#get_usage_lambda) | **GET** /api/v1/usage/aws_lambda | Get hourly usage for Lambda |
| [**get_usage_logs**](UsageMeteringApi.md#get_usage_logs) | **GET** /api/v1/usage/logs | Get hourly usage for Logs |
| [**get_usage_logs_by_index**](UsageMeteringApi.md#get_usage_logs_by_index) | **GET** /api/v1/usage/logs_by_index | Get hourly usage for Logs by Index |
| [**get_usage_network_flows**](UsageMeteringApi.md#get_usage_network_flows) | **GET** /api/v1/usage/network_flows | Get hourly usage for Network Flows |
| [**get_usage_network_hosts**](UsageMeteringApi.md#get_usage_network_hosts) | **GET** /api/v1/usage/network_hosts | Get hourly usage for Network Hosts |
| [**get_usage_profiling**](UsageMeteringApi.md#get_usage_profiling) | **GET** /api/v1/usage/profiling | Get hourly usage for profiled hosts |
| [**get_usage_rum_sessions**](UsageMeteringApi.md#get_usage_rum_sessions) | **GET** /api/v1/usage/rum_sessions | Get hourly usage for RUM Sessions |
| [**get_usage_snmp**](UsageMeteringApi.md#get_usage_snmp) | **GET** /api/v1/usage/snmp | Get hourly usage for SNMP devices |
| [**get_usage_summary**](UsageMeteringApi.md#get_usage_summary) | **GET** /api/v1/usage/summary | Get usage across your multi-org account |
| [**get_usage_synthetics**](UsageMeteringApi.md#get_usage_synthetics) | **GET** /api/v1/usage/synthetics | Get hourly usage for Synthetics Checks |
| [**get_usage_synthetics_api**](UsageMeteringApi.md#get_usage_synthetics_api) | **GET** /api/v1/usage/synthetics_api | Get hourly usage for Synthetics API Checks |
| [**get_usage_synthetics_browser**](UsageMeteringApi.md#get_usage_synthetics_browser) | **GET** /api/v1/usage/synthetics_browser | Get hourly usage for Synthetics Browser Checks |
| [**get_usage_timeseries**](UsageMeteringApi.md#get_usage_timeseries) | **GET** /api/v1/usage/timeseries | Get hourly usage for custom metrics |
| [**get_usage_top_avg_metrics**](UsageMeteringApi.md#get_usage_top_avg_metrics) | **GET** /api/v1/usage/top_avg_metrics | Get top custom metrics by hourly average |
| [**get_usage_trace**](UsageMeteringApi.md#get_usage_trace) | **GET** /api/v1/usage/traces | Get hourly usage for Trace Search |


## get_daily_custom_reports

> <UsageCustomReportsResponse> get_daily_custom_reports(opts)

Get the list of available daily custom reports

Get daily custom reports.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_daily_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
opts = {
  page_size: 789, # Integer | The number of files to return in the response. `[default=60]`.
  page_number: 789, # Integer | The identifier of the first page to return. This parameter is used for the pagination feature `[default=0]`.
  sort_dir: DatadogAPIClient::V1::UsageSortDirection::DESC, # UsageSortDirection | The direction to sort by: `[desc, asc]`.
  sort: DatadogAPIClient::V1::UsageSort::COMPUTED_ON # UsageSort | The field to sort by: `[computed_on, size, start_date, end_date]`.
}

begin
  # Get the list of available daily custom reports
  result = api_instance.get_daily_custom_reports(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_daily_custom_reports: #{e}"
end
```

#### Using the get_daily_custom_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageCustomReportsResponse>, Integer, Hash)> get_daily_custom_reports_with_http_info(opts)

```ruby
begin
  # Get the list of available daily custom reports
  data, status_code, headers = api_instance.get_daily_custom_reports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageCustomReportsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_daily_custom_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The number of files to return in the response. &#x60;[default&#x3D;60]&#x60;. | [optional] |
| **page_number** | **Integer** | The identifier of the first page to return. This parameter is used for the pagination feature &#x60;[default&#x3D;0]&#x60;. | [optional] |
| **sort_dir** | **UsageSortDirection** | The direction to sort by: &#x60;[desc, asc]&#x60;. | [optional][default to &#39;desc&#39;] |
| **sort** | **UsageSort** | The field to sort by: &#x60;[computed_on, size, start_date, end_date]&#x60;. | [optional][default to &#39;start_date&#39;] |

### Return type

[**UsageCustomReportsResponse**](UsageCustomReportsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_incident_management

> <UsageIncidentManagementResponse> get_incident_management(start_hr, opts)

Get hourly usage for incident management

Get hourly usage for incident management.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for incident management
  result = api_instance.get_incident_management(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_incident_management: #{e}"
end
```

#### Using the get_incident_management_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageIncidentManagementResponse>, Integer, Hash)> get_incident_management_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for incident management
  data, status_code, headers = api_instance.get_incident_management_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageIncidentManagementResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_incident_management_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageIncidentManagementResponse**](UsageIncidentManagementResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_ingested_spans

> <UsageIngestedSpansResponse> get_ingested_spans(start_hr, opts)

Get hourly usage for ingested spans

Get hourly usage for ingested spans.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for ingested spans
  result = api_instance.get_ingested_spans(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_ingested_spans: #{e}"
end
```

#### Using the get_ingested_spans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageIngestedSpansResponse>, Integer, Hash)> get_ingested_spans_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for ingested spans
  data, status_code, headers = api_instance.get_ingested_spans_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageIngestedSpansResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_ingested_spans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageIngestedSpansResponse**](UsageIngestedSpansResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_monthly_custom_reports

> <UsageCustomReportsResponse> get_monthly_custom_reports(opts)

Get the list of available monthly custom reports

Get monthly custom reports.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_monthly_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
opts = {
  page_size: 789, # Integer | The number of files to return in the response `[default=60].`
  page_number: 789, # Integer | The identifier of the first page to return. This parameter is used for the pagination feature `[default=0]`.
  sort_dir: DatadogAPIClient::V1::UsageSortDirection::DESC, # UsageSortDirection | The direction to sort by: `[desc, asc]`.
  sort: DatadogAPIClient::V1::UsageSort::COMPUTED_ON # UsageSort | The field to sort by: `[computed_on, size, start_date, end_date]`.
}

begin
  # Get the list of available monthly custom reports
  result = api_instance.get_monthly_custom_reports(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_monthly_custom_reports: #{e}"
end
```

#### Using the get_monthly_custom_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageCustomReportsResponse>, Integer, Hash)> get_monthly_custom_reports_with_http_info(opts)

```ruby
begin
  # Get the list of available monthly custom reports
  data, status_code, headers = api_instance.get_monthly_custom_reports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageCustomReportsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_monthly_custom_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The number of files to return in the response &#x60;[default&#x3D;60].&#x60; | [optional] |
| **page_number** | **Integer** | The identifier of the first page to return. This parameter is used for the pagination feature &#x60;[default&#x3D;0]&#x60;. | [optional] |
| **sort_dir** | **UsageSortDirection** | The direction to sort by: &#x60;[desc, asc]&#x60;. | [optional][default to &#39;desc&#39;] |
| **sort** | **UsageSort** | The field to sort by: &#x60;[computed_on, size, start_date, end_date]&#x60;. | [optional][default to &#39;start_date&#39;] |

### Return type

[**UsageCustomReportsResponse**](UsageCustomReportsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_specified_daily_custom_reports

> <UsageSpecifiedCustomReportsResponse> get_specified_daily_custom_reports(report_id)

Get specified daily custom reports

Get specified daily custom reports.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_specified_daily_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
report_id = 'report_id_example' # String | The specified ID to search results for.

begin
  # Get specified daily custom reports
  result = api_instance.get_specified_daily_custom_reports(report_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_specified_daily_custom_reports: #{e}"
end
```

#### Using the get_specified_daily_custom_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSpecifiedCustomReportsResponse>, Integer, Hash)> get_specified_daily_custom_reports_with_http_info(report_id)

```ruby
begin
  # Get specified daily custom reports
  data, status_code, headers = api_instance.get_specified_daily_custom_reports_with_http_info(report_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSpecifiedCustomReportsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_specified_daily_custom_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** | The specified ID to search results for. |  |

### Return type

[**UsageSpecifiedCustomReportsResponse**](UsageSpecifiedCustomReportsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_specified_monthly_custom_reports

> <UsageSpecifiedCustomReportsResponse> get_specified_monthly_custom_reports(report_id)

Get specified monthly custom reports

Get specified monthly custom reports.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_specified_monthly_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
report_id = 'report_id_example' # String | The specified ID to search results for.

begin
  # Get specified monthly custom reports
  result = api_instance.get_specified_monthly_custom_reports(report_id)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_specified_monthly_custom_reports: #{e}"
end
```

#### Using the get_specified_monthly_custom_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSpecifiedCustomReportsResponse>, Integer, Hash)> get_specified_monthly_custom_reports_with_http_info(report_id)

```ruby
begin
  # Get specified monthly custom reports
  data, status_code, headers = api_instance.get_specified_monthly_custom_reports_with_http_info(report_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSpecifiedCustomReportsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_specified_monthly_custom_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** | The specified ID to search results for. |  |

### Return type

[**UsageSpecifiedCustomReportsResponse**](UsageSpecifiedCustomReportsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_tracing_without_limits

> <UsageTracingWithoutLimitsResponse> get_tracing_without_limits(start_hr, opts)

Get hourly usage for tracing without limits

Get hourly usage for tracing without limits.  **Note** This endpoint has been renamed to `/api/v1/usage/ingested-spans`.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for tracing without limits
  result = api_instance.get_tracing_without_limits(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_tracing_without_limits: #{e}"
end
```

#### Using the get_tracing_without_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageTracingWithoutLimitsResponse>, Integer, Hash)> get_tracing_without_limits_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for tracing without limits
  data, status_code, headers = api_instance.get_tracing_without_limits_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageTracingWithoutLimitsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_tracing_without_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageTracingWithoutLimitsResponse**](UsageTracingWithoutLimitsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_analyzed_logs

> <UsageAnalyzedLogsResponse> get_usage_analyzed_logs(start_hr, opts)

Get hourly usage for analyzed logs

Get hourly usage for analyzed logs (Security Monitoring).

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for analyzed logs
  result = api_instance.get_usage_analyzed_logs(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_analyzed_logs: #{e}"
end
```

#### Using the get_usage_analyzed_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageAnalyzedLogsResponse>, Integer, Hash)> get_usage_analyzed_logs_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for analyzed logs
  data, status_code, headers = api_instance.get_usage_analyzed_logs_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageAnalyzedLogsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_analyzed_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageAnalyzedLogsResponse**](UsageAnalyzedLogsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_attribution

> <UsageAttributionResponse> get_usage_attribution(start_month, fields, opts)

Get Usage Attribution

Get Usage Attribution.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_usage_attribution] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_month = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage beginning in this month. Maximum of 15 months ago.
fields = 'fields_example' # String | The specified field to search results for.
opts = {
  end_month: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage ending this month.
  sort_direction: DatadogAPIClient::V1::UsageSortDirection::DESC, # UsageSortDirection | The direction to sort by: `[desc, asc]`.
  sort_name: DatadogAPIClient::V1::UsageAttributionSort::API_PERCENTAGE # UsageAttributionSort | The field to sort by.
}

begin
  # Get Usage Attribution
  result = api_instance.get_usage_attribution(start_month, fields, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_attribution: #{e}"
end
```

#### Using the get_usage_attribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageAttributionResponse>, Integer, Hash)> get_usage_attribution_with_http_info(start_month, fields, opts)

```ruby
begin
  # Get Usage Attribution
  data, status_code, headers = api_instance.get_usage_attribution_with_http_info(start_month, fields, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageAttributionResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_attribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_month** | **Time** | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage beginning in this month. Maximum of 15 months ago. |  |
| **fields** | **String** | The specified field to search results for. |  |
| **end_month** | **Time** | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage ending this month. | [optional] |
| **sort_direction** | **UsageSortDirection** | The direction to sort by: &#x60;[desc, asc]&#x60;. | [optional][default to &#39;desc&#39;] |
| **sort_name** | **UsageAttributionSort** | The field to sort by. | [optional][default to &#39;custom_timeseries_usage&#39;] |

### Return type

[**UsageAttributionResponse**](UsageAttributionResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_billable_summary

> <UsageBillableSummaryResponse> get_usage_billable_summary(opts)

Get billable usage across your account

Get billable usage across your account.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
opts = {
  month: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage starting this month.
}

begin
  # Get billable usage across your account
  result = api_instance.get_usage_billable_summary(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_billable_summary: #{e}"
end
```

#### Using the get_usage_billable_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageBillableSummaryResponse>, Integer, Hash)> get_usage_billable_summary_with_http_info(opts)

```ruby
begin
  # Get billable usage across your account
  data, status_code, headers = api_instance.get_usage_billable_summary_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageBillableSummaryResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_billable_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **Time** | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage starting this month. | [optional] |

### Return type

[**UsageBillableSummaryResponse**](UsageBillableSummaryResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_compliance_monitoring

> <UsageComplianceResponse> get_usage_compliance_monitoring(start_hr, opts)

Get hourly usage for Compliance Monitoring

Get hourly usage for Compliance Monitoring.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for Compliance Monitoring
  result = api_instance.get_usage_compliance_monitoring(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_compliance_monitoring: #{e}"
end
```

#### Using the get_usage_compliance_monitoring_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageComplianceResponse>, Integer, Hash)> get_usage_compliance_monitoring_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Compliance Monitoring
  data, status_code, headers = api_instance.get_usage_compliance_monitoring_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageComplianceResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_compliance_monitoring_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageComplianceResponse**](UsageComplianceResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_fargate

> <UsageFargateResponse> get_usage_fargate(start_hr, opts)

Get hourly usage for Fargate

Get hourly usage for [Fargate](https://docs.datadoghq.com/integrations/ecs_fargate/).

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Fargate
  result = api_instance.get_usage_fargate(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_fargate: #{e}"
end
```

#### Using the get_usage_fargate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageFargateResponse>, Integer, Hash)> get_usage_fargate_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Fargate
  data, status_code, headers = api_instance.get_usage_fargate_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageFargateResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_fargate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageFargateResponse**](UsageFargateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_hosts

> <UsageHostsResponse> get_usage_hosts(start_hr, opts)

Get hourly usage for hosts and containers

Get hourly usage for hosts and containers.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for hosts and containers
  result = api_instance.get_usage_hosts(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_hosts: #{e}"
end
```

#### Using the get_usage_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageHostsResponse>, Integer, Hash)> get_usage_hosts_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for hosts and containers
  data, status_code, headers = api_instance.get_usage_hosts_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageHostsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageHostsResponse**](UsageHostsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_indexed_spans

> <UsageIndexedSpansResponse> get_usage_indexed_spans(start_hr, opts)

Get hourly usage for indexed spans

Get hourly usage for indexed spans.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for indexed spans
  result = api_instance.get_usage_indexed_spans(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_indexed_spans: #{e}"
end
```

#### Using the get_usage_indexed_spans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageIndexedSpansResponse>, Integer, Hash)> get_usage_indexed_spans_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for indexed spans
  data, status_code, headers = api_instance.get_usage_indexed_spans_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageIndexedSpansResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_indexed_spans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageIndexedSpansResponse**](UsageIndexedSpansResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_internet_of_things

> <UsageIoTResponse> get_usage_internet_of_things(start_hr, opts)

Get hourly usage for IoT

Get hourly usage for IoT.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for IoT
  result = api_instance.get_usage_internet_of_things(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_internet_of_things: #{e}"
end
```

#### Using the get_usage_internet_of_things_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageIoTResponse>, Integer, Hash)> get_usage_internet_of_things_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for IoT
  data, status_code, headers = api_instance.get_usage_internet_of_things_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageIoTResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_internet_of_things_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageIoTResponse**](UsageIoTResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_lambda

> <UsageLambdaResponse> get_usage_lambda(start_hr, opts)

Get hourly usage for Lambda

Get hourly usage for lambda.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Lambda
  result = api_instance.get_usage_lambda(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_lambda: #{e}"
end
```

#### Using the get_usage_lambda_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageLambdaResponse>, Integer, Hash)> get_usage_lambda_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Lambda
  data, status_code, headers = api_instance.get_usage_lambda_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageLambdaResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_lambda_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageLambdaResponse**](UsageLambdaResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_logs

> <UsageLogsResponse> get_usage_logs(start_hr, opts)

Get hourly usage for Logs

Get hourly usage for logs.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Logs
  result = api_instance.get_usage_logs(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_logs: #{e}"
end
```

#### Using the get_usage_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageLogsResponse>, Integer, Hash)> get_usage_logs_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Logs
  data, status_code, headers = api_instance.get_usage_logs_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageLogsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageLogsResponse**](UsageLogsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_logs_by_index

> <UsageLogsByIndexResponse> get_usage_logs_by_index(start_hr, opts)

Get hourly usage for Logs by Index

Get hourly usage for logs by index.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
  index_name: ['inner_example'] # Array<String> | Comma-separated list of log index names.
}

begin
  # Get hourly usage for Logs by Index
  result = api_instance.get_usage_logs_by_index(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_logs_by_index: #{e}"
end
```

#### Using the get_usage_logs_by_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageLogsByIndexResponse>, Integer, Hash)> get_usage_logs_by_index_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Logs by Index
  data, status_code, headers = api_instance.get_usage_logs_by_index_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageLogsByIndexResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_logs_by_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |
| **index_name** | **Array&lt;String&gt;** | Comma-separated list of log index names. | [optional] |

### Return type

[**UsageLogsByIndexResponse**](UsageLogsByIndexResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_network_flows

> <UsageNetworkFlowsResponse> get_usage_network_flows(start_hr, opts)

Get hourly usage for Network Flows

Get hourly usage for network flows.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for Network Flows
  result = api_instance.get_usage_network_flows(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_network_flows: #{e}"
end
```

#### Using the get_usage_network_flows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageNetworkFlowsResponse>, Integer, Hash)> get_usage_network_flows_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Network Flows
  data, status_code, headers = api_instance.get_usage_network_flows_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageNetworkFlowsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_network_flows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageNetworkFlowsResponse**](UsageNetworkFlowsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_network_hosts

> <UsageNetworkHostsResponse> get_usage_network_hosts(start_hr, opts)

Get hourly usage for Network Hosts

Get hourly usage for network hosts.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Network Hosts
  result = api_instance.get_usage_network_hosts(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_network_hosts: #{e}"
end
```

#### Using the get_usage_network_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageNetworkHostsResponse>, Integer, Hash)> get_usage_network_hosts_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Network Hosts
  data, status_code, headers = api_instance.get_usage_network_hosts_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageNetworkHostsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_network_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageNetworkHostsResponse**](UsageNetworkHostsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_profiling

> <UsageProfilingResponse> get_usage_profiling(start_hr, opts)

Get hourly usage for profiled hosts

Get hourly usage for profiled hosts.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for profiled hosts
  result = api_instance.get_usage_profiling(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_profiling: #{e}"
end
```

#### Using the get_usage_profiling_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageProfilingResponse>, Integer, Hash)> get_usage_profiling_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for profiled hosts
  data, status_code, headers = api_instance.get_usage_profiling_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageProfilingResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_profiling_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageProfilingResponse**](UsageProfilingResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_rum_sessions

> <UsageRumSessionsResponse> get_usage_rum_sessions(start_hr, opts)

Get hourly usage for RUM Sessions

Get hourly usage for [RUM](https://docs.datadoghq.com/real_user_monitoring/) Sessions.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
  type: 'type_example' # String | RUM type: `[browser, mobile]`. Defaults to `browser`.
}

begin
  # Get hourly usage for RUM Sessions
  result = api_instance.get_usage_rum_sessions(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_rum_sessions: #{e}"
end
```

#### Using the get_usage_rum_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageRumSessionsResponse>, Integer, Hash)> get_usage_rum_sessions_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for RUM Sessions
  data, status_code, headers = api_instance.get_usage_rum_sessions_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageRumSessionsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_rum_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |
| **type** | **String** | RUM type: &#x60;[browser, mobile]&#x60;. Defaults to &#x60;browser&#x60;. | [optional] |

### Return type

[**UsageRumSessionsResponse**](UsageRumSessionsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_snmp

> <UsageSNMPResponse> get_usage_snmp(start_hr, opts)

Get hourly usage for SNMP devices

Get hourly usage for SNMP devices.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for SNMP devices
  result = api_instance.get_usage_snmp(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_snmp: #{e}"
end
```

#### Using the get_usage_snmp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSNMPResponse>, Integer, Hash)> get_usage_snmp_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for SNMP devices
  data, status_code, headers = api_instance.get_usage_snmp_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSNMPResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_snmp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSNMPResponse**](UsageSNMPResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_summary

> <UsageSummaryResponse> get_usage_summary(start_month, opts)

Get usage across your multi-org account

Get usage across your multi-org account. You must have the multi-org feature enabled.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_month = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage beginning in this month. Maximum of 15 months ago.
opts = {
  end_month: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage ending this month.
  include_org_details: true # Boolean | Include usage summaries for each sub-org.
}

begin
  # Get usage across your multi-org account
  result = api_instance.get_usage_summary(start_month, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_summary: #{e}"
end
```

#### Using the get_usage_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSummaryResponse>, Integer, Hash)> get_usage_summary_with_http_info(start_month, opts)

```ruby
begin
  # Get usage across your multi-org account
  data, status_code, headers = api_instance.get_usage_summary_with_http_info(start_month, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSummaryResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_month** | **Time** | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage beginning in this month. Maximum of 15 months ago. |  |
| **end_month** | **Time** | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage ending this month. | [optional] |
| **include_org_details** | **Boolean** | Include usage summaries for each sub-org. | [optional] |

### Return type

[**UsageSummaryResponse**](UsageSummaryResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_synthetics

> <UsageSyntheticsResponse> get_usage_synthetics(start_hr, opts)

Get hourly usage for Synthetics Checks

Get hourly usage for [Synthetics checks](https://docs.datadoghq.com/synthetics/).

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Synthetics Checks
  result = api_instance.get_usage_synthetics(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_synthetics: #{e}"
end
```

#### Using the get_usage_synthetics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSyntheticsResponse>, Integer, Hash)> get_usage_synthetics_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Synthetics Checks
  data, status_code, headers = api_instance.get_usage_synthetics_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSyntheticsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_synthetics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSyntheticsResponse**](UsageSyntheticsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_synthetics_api

> <UsageSyntheticsAPIResponse> get_usage_synthetics_api(start_hr, opts)

Get hourly usage for Synthetics API Checks

Get hourly usage for [synthetics API checks](https://docs.datadoghq.com/synthetics/).

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Synthetics API Checks
  result = api_instance.get_usage_synthetics_api(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_synthetics_api: #{e}"
end
```

#### Using the get_usage_synthetics_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSyntheticsAPIResponse>, Integer, Hash)> get_usage_synthetics_api_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Synthetics API Checks
  data, status_code, headers = api_instance.get_usage_synthetics_api_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSyntheticsAPIResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_synthetics_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSyntheticsAPIResponse**](UsageSyntheticsAPIResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_synthetics_browser

> <UsageSyntheticsBrowserResponse> get_usage_synthetics_browser(start_hr, opts)

Get hourly usage for Synthetics Browser Checks

Get hourly usage for synthetics browser checks.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Synthetics Browser Checks
  result = api_instance.get_usage_synthetics_browser(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_synthetics_browser: #{e}"
end
```

#### Using the get_usage_synthetics_browser_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSyntheticsBrowserResponse>, Integer, Hash)> get_usage_synthetics_browser_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Synthetics Browser Checks
  data, status_code, headers = api_instance.get_usage_synthetics_browser_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSyntheticsBrowserResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_synthetics_browser_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSyntheticsBrowserResponse**](UsageSyntheticsBrowserResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_timeseries

> <UsageTimeseriesResponse> get_usage_timeseries(start_hr, opts)

Get hourly usage for custom metrics

Get hourly usage for [custom metrics](https://docs.datadoghq.com/developers/metrics/custom_metrics/).

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for custom metrics
  result = api_instance.get_usage_timeseries(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_timeseries: #{e}"
end
```

#### Using the get_usage_timeseries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageTimeseriesResponse>, Integer, Hash)> get_usage_timeseries_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for custom metrics
  data, status_code, headers = api_instance.get_usage_timeseries_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageTimeseriesResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_timeseries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageTimeseriesResponse**](UsageTimeseriesResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_top_avg_metrics

> <UsageTopAvgMetricsResponse> get_usage_top_avg_metrics(opts)

Get top custom metrics by hourly average

Get top [custom metrics](https://docs.datadoghq.com/developers/metrics/custom_metrics/) by hourly average. Use the month parameter to get a month-to-date data resolution or use the day parameter to get a daily resolution. One of the two is required, and only one of the two is allowed.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
opts = {
  month: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to month: [YYYY-MM] for usage beginning at this hour. (Either month or day should be specified, but not both)
  day: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to day: [YYYY-MM-DD] for usage beginning at this hour. (Either month or day should be specified, but not both)
  names: ['inner_example'], # Array<String> | Comma-separated list of metric names.
  limit: 56 # Integer | Maximum number of results to return (between 1 and 5000) - defaults to 500 results if limit not specified.
}

begin
  # Get top custom metrics by hourly average
  result = api_instance.get_usage_top_avg_metrics(opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_top_avg_metrics: #{e}"
end
```

#### Using the get_usage_top_avg_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageTopAvgMetricsResponse>, Integer, Hash)> get_usage_top_avg_metrics_with_http_info(opts)

```ruby
begin
  # Get top custom metrics by hourly average
  data, status_code, headers = api_instance.get_usage_top_avg_metrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageTopAvgMetricsResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_top_avg_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **Time** | Datetime in ISO-8601 format, UTC, precise to month: [YYYY-MM] for usage beginning at this hour. (Either month or day should be specified, but not both) | [optional] |
| **day** | **Time** | Datetime in ISO-8601 format, UTC, precise to day: [YYYY-MM-DD] for usage beginning at this hour. (Either month or day should be specified, but not both) | [optional] |
| **names** | **Array&lt;String&gt;** | Comma-separated list of metric names. | [optional] |
| **limit** | **Integer** | Maximum number of results to return (between 1 and 5000) - defaults to 500 results if limit not specified. | [optional][default to 500] |

### Return type

[**UsageTopAvgMetricsResponse**](UsageTopAvgMetricsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


## get_usage_trace

> <UsageTraceResponse> get_usage_trace(start_hr, opts)

Get hourly usage for Trace Search

Get hourly usage for trace search.  **Note** This endpoint has been renamed to `/api/v1/usage/indexed-spans`.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::UsageMeteringApi.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Trace Search
  result = api_instance.get_usage_trace(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_trace: #{e}"
end
```

#### Using the get_usage_trace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageTraceResponse>, Integer, Hash)> get_usage_trace_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Trace Search
  data, status_code, headers = api_instance.get_usage_trace_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageTraceResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling UsageMeteringApi->get_usage_trace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour. |  |
| **end_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageTraceResponse**](UsageTraceResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339


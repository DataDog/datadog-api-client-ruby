# DatadogAPIClient::V1::UsageMeteringAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                                                             | HTTP request                                       | Description                                      |
| ------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------- | ------------------------------------------------ |
| [**get_daily_custom_reports**](UsageMeteringAPI.md#get_daily_custom_reports)                                       | **GET** /api/v1/daily_custom_reports               | Get the list of available daily custom reports   |
| [**get_hourly_usage_attribution**](UsageMeteringAPI.md#get_hourly_usage_attribution)                               | **GET** /api/v1/usage/hourly-attribution           | Get Hourly Usage Attribution                     |
| [**get_incident_management**](UsageMeteringAPI.md#get_incident_management)                                         | **GET** /api/v1/usage/incident-management          | Get hourly usage for incident management         |
| [**get_ingested_spans**](UsageMeteringAPI.md#get_ingested_spans)                                                   | **GET** /api/v1/usage/ingested-spans               | Get hourly usage for ingested spans              |
| [**get_monthly_custom_reports**](UsageMeteringAPI.md#get_monthly_custom_reports)                                   | **GET** /api/v1/monthly_custom_reports             | Get the list of available monthly custom reports |
| [**get_monthly_usage_attribution**](UsageMeteringAPI.md#get_monthly_usage_attribution)                             | **GET** /api/v1/usage/monthly-attribution          | Get Monthly Usage Attribution                    |
| [**get_specified_daily_custom_reports**](UsageMeteringAPI.md#get_specified_daily_custom_reports)                   | **GET** /api/v1/daily_custom_reports/{report_id}   | Get specified daily custom reports               |
| [**get_specified_monthly_custom_reports**](UsageMeteringAPI.md#get_specified_monthly_custom_reports)               | **GET** /api/v1/monthly_custom_reports/{report_id} | Get specified monthly custom reports             |
| [**get_usage_analyzed_logs**](UsageMeteringAPI.md#get_usage_analyzed_logs)                                         | **GET** /api/v1/usage/analyzed_logs                | Get hourly usage for analyzed logs               |
| [**get_usage_attribution**](UsageMeteringAPI.md#get_usage_attribution)                                             | **GET** /api/v1/usage/attribution                  | Get Usage Attribution                            |
| [**get_usage_audit_logs**](UsageMeteringAPI.md#get_usage_audit_logs)                                               | **GET** /api/v1/usage/audit_logs                   | Get hourly usage for audit logs                  |
| [**get_usage_billable_summary**](UsageMeteringAPI.md#get_usage_billable_summary)                                   | **GET** /api/v1/usage/billable-summary             | Get billable usage across your account           |
| [**get_usage_cloud_security_posture_management**](UsageMeteringAPI.md#get_usage_cloud_security_posture_management) | **GET** /api/v1/usage/cspm                         | Get hourly usage for CSPM                        |
| [**get_usage_cws**](UsageMeteringAPI.md#get_usage_cws)                                                             | **GET** /api/v1/usage/cws                          | Get hourly usage for Cloud Workload Security     |
| [**get_usage_dbm**](UsageMeteringAPI.md#get_usage_dbm)                                                             | **GET** /api/v1/usage/dbm                          | Get hourly usage for Database Monitoring         |
| [**get_usage_fargate**](UsageMeteringAPI.md#get_usage_fargate)                                                     | **GET** /api/v1/usage/fargate                      | Get hourly usage for Fargate                     |
| [**get_usage_hosts**](UsageMeteringAPI.md#get_usage_hosts)                                                         | **GET** /api/v1/usage/hosts                        | Get hourly usage for hosts and containers        |
| [**get_usage_indexed_spans**](UsageMeteringAPI.md#get_usage_indexed_spans)                                         | **GET** /api/v1/usage/indexed-spans                | Get hourly usage for indexed spans               |
| [**get_usage_internet_of_things**](UsageMeteringAPI.md#get_usage_internet_of_things)                               | **GET** /api/v1/usage/iot                          | Get hourly usage for IoT                         |
| [**get_usage_lambda**](UsageMeteringAPI.md#get_usage_lambda)                                                       | **GET** /api/v1/usage/aws_lambda                   | Get hourly usage for Lambda                      |
| [**get_usage_logs**](UsageMeteringAPI.md#get_usage_logs)                                                           | **GET** /api/v1/usage/logs                         | Get hourly usage for Logs                        |
| [**get_usage_logs_by_index**](UsageMeteringAPI.md#get_usage_logs_by_index)                                         | **GET** /api/v1/usage/logs_by_index                | Get hourly usage for Logs by Index               |
| [**get_usage_logs_by_retention**](UsageMeteringAPI.md#get_usage_logs_by_retention)                                 | **GET** /api/v1/usage/logs-by-retention            | Get hourly logs usage by retention               |
| [**get_usage_network_flows**](UsageMeteringAPI.md#get_usage_network_flows)                                         | **GET** /api/v1/usage/network_flows                | Get hourly usage for Network Flows               |
| [**get_usage_network_hosts**](UsageMeteringAPI.md#get_usage_network_hosts)                                         | **GET** /api/v1/usage/network_hosts                | Get hourly usage for Network Hosts               |
| [**get_usage_profiling**](UsageMeteringAPI.md#get_usage_profiling)                                                 | **GET** /api/v1/usage/profiling                    | Get hourly usage for profiled hosts              |
| [**get_usage_rum_sessions**](UsageMeteringAPI.md#get_usage_rum_sessions)                                           | **GET** /api/v1/usage/rum_sessions                 | Get hourly usage for RUM Sessions                |
| [**get_usage_rum_units**](UsageMeteringAPI.md#get_usage_rum_units)                                                 | **GET** /api/v1/usage/rum                          | Get hourly usage for RUM Units                   |
| [**get_usage_sds**](UsageMeteringAPI.md#get_usage_sds)                                                             | **GET** /api/v1/usage/sds                          | Get hourly usage for Sensitive Data Scanner      |
| [**get_usage_snmp**](UsageMeteringAPI.md#get_usage_snmp)                                                           | **GET** /api/v1/usage/snmp                         | Get hourly usage for SNMP devices                |
| [**get_usage_summary**](UsageMeteringAPI.md#get_usage_summary)                                                     | **GET** /api/v1/usage/summary                      | Get usage across your multi-org account          |
| [**get_usage_synthetics**](UsageMeteringAPI.md#get_usage_synthetics)                                               | **GET** /api/v1/usage/synthetics                   | Get hourly usage for Synthetics Checks           |
| [**get_usage_synthetics_api**](UsageMeteringAPI.md#get_usage_synthetics_api)                                       | **GET** /api/v1/usage/synthetics_api               | Get hourly usage for Synthetics API Checks       |
| [**get_usage_synthetics_browser**](UsageMeteringAPI.md#get_usage_synthetics_browser)                               | **GET** /api/v1/usage/synthetics_browser           | Get hourly usage for Synthetics Browser Checks   |
| [**get_usage_timeseries**](UsageMeteringAPI.md#get_usage_timeseries)                                               | **GET** /api/v1/usage/timeseries                   | Get hourly usage for custom metrics              |
| [**get_usage_top_avg_metrics**](UsageMeteringAPI.md#get_usage_top_avg_metrics)                                     | **GET** /api/v1/usage/top_avg_metrics              | Get all custom metrics by hourly average         |

## get_daily_custom_reports

> <UsageCustomReportsResponse> get_daily_custom_reports(opts)

Get daily custom reports.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_daily_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_daily_custom_reports: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_daily_custom_reports_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type                   | Description                                                                                                                 | Notes                                       |
| --------------- | ---------------------- | --------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| **page_size**   | **Integer**            | The number of files to return in the response. &#x60;[default&#x3D;60]&#x60;.                                               | [optional]                                  |
| **page_number** | **Integer**            | The identifier of the first page to return. This parameter is used for the pagination feature &#x60;[default&#x3D;0]&#x60;. | [optional]                                  |
| **sort_dir**    | **UsageSortDirection** | The direction to sort by: &#x60;[desc, asc]&#x60;.                                                                          | [optional][default to &#39;desc&#39;]       |
| **sort**        | **UsageSort**          | The field to sort by: &#x60;[computed_on, size, start_date, end_date]&#x60;.                                                | [optional][default to &#39;start_date&#39;] |

### Return type

[**UsageCustomReportsResponse**](UsageCustomReportsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_hourly_usage_attribution

> <HourlyUsageAttributionResponse> get_hourly_usage_attribution(start_hr, usage_type, opts)

Get Hourly Usage Attribution.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_hourly_usage_attribution] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
usage_type = DatadogAPIClient::V1::HourlyUsageAttributionUsageType::API_USAGE # HourlyUsageAttributionUsageType | Usage type to retrieve.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
  next_record_id: 'next_record_id_example', # String | List following results with a next_record_id provided in the previous query.
  tag_breakdown_keys: 'tag_breakdown_keys_example' # String | Comma separated list of tags used to group usage. If no value is provided the usage will not be broken down by tags.
}

begin
  # Get Hourly Usage Attribution
  result = api_instance.get_hourly_usage_attribution(start_hr, usage_type, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_hourly_usage_attribution: #{e}"
end
```

#### Using the get_hourly_usage_attribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HourlyUsageAttributionResponse>, Integer, Hash)> get_hourly_usage_attribution_with_http_info(start_hr, usage_type, opts)

```ruby
begin
  # Get Hourly Usage Attribution
  data, status_code, headers = api_instance.get_hourly_usage_attribution_with_http_info(start_hr, usage_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HourlyUsageAttributionResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_hourly_usage_attribution_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type                                | Description                                                                                                           | Notes      |
| ---------------------- | ----------------------------------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr**           | **Time**                            | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **usage_type**         | **HourlyUsageAttributionUsageType** | Usage type to retrieve.                                                                                               |            |
| **end_hr**             | **Time**                            | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |
| **next_record_id**     | **String**                          | List following results with a next_record_id provided in the previous query.                                          | [optional] |
| **tag_breakdown_keys** | **String**                          | Comma separated list of tags used to group usage. If no value is provided the usage will not be broken down by tags.  | [optional] |

### Return type

[**HourlyUsageAttributionResponse**](HourlyUsageAttributionResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_incident_management

> <UsageIncidentManagementResponse> get_incident_management(start_hr, opts)

Get hourly usage for incident management.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for incident management
  result = api_instance.get_incident_management(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_incident_management: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_incident_management_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageIncidentManagementResponse**](UsageIncidentManagementResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_ingested_spans

> <UsageIngestedSpansResponse> get_ingested_spans(start_hr, opts)

Get hourly usage for ingested spans.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for ingested spans
  result = api_instance.get_ingested_spans(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_ingested_spans: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_ingested_spans_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageIngestedSpansResponse**](UsageIngestedSpansResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_monthly_custom_reports

> <UsageCustomReportsResponse> get_monthly_custom_reports(opts)

Get monthly custom reports.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_monthly_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_monthly_custom_reports: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_monthly_custom_reports_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type                   | Description                                                                                                                 | Notes                                       |
| --------------- | ---------------------- | --------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| **page_size**   | **Integer**            | The number of files to return in the response &#x60;[default&#x3D;60].&#x60;                                                | [optional]                                  |
| **page_number** | **Integer**            | The identifier of the first page to return. This parameter is used for the pagination feature &#x60;[default&#x3D;0]&#x60;. | [optional]                                  |
| **sort_dir**    | **UsageSortDirection** | The direction to sort by: &#x60;[desc, asc]&#x60;.                                                                          | [optional][default to &#39;desc&#39;]       |
| **sort**        | **UsageSort**          | The field to sort by: &#x60;[computed_on, size, start_date, end_date]&#x60;.                                                | [optional][default to &#39;start_date&#39;] |

### Return type

[**UsageCustomReportsResponse**](UsageCustomReportsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_monthly_usage_attribution

> <MonthlyUsageAttributionResponse> get_monthly_usage_attribution(start_month, fields, opts)

Get Monthly Usage Attribution.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_monthly_usage_attribution] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_month = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage beginning in this month. Maximum of 15 months ago.
fields = DatadogAPIClient::V1::MonthlyUsageAttributionSupportedMetrics::API_USAGE # MonthlyUsageAttributionSupportedMetrics | Comma-separated list of usage types to return, or `*` for all usage types.
opts = {
  end_month: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage ending this month.
  sort_direction: DatadogAPIClient::V1::UsageSortDirection::DESC, # UsageSortDirection | The direction to sort by: `[desc, asc]`.
  sort_name: DatadogAPIClient::V1::MonthlyUsageAttributionSupportedMetrics::API_USAGE, # MonthlyUsageAttributionSupportedMetrics | The field to sort by.
  tag_breakdown_keys: 'tag_breakdown_keys_example', # String | Comma separated list of tags used to group usage. If no value is provided the usage will not be broken down by tags.
  next_record_id: 'next_record_id_example' # String | List following results with a next_record_id provided in the previous query.
}

begin
  # Get Monthly Usage Attribution
  result = api_instance.get_monthly_usage_attribution(start_month, fields, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_monthly_usage_attribution: #{e}"
end
```

#### Using the get_monthly_usage_attribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonthlyUsageAttributionResponse>, Integer, Hash)> get_monthly_usage_attribution_with_http_info(start_month, fields, opts)

```ruby
begin
  # Get Monthly Usage Attribution
  data, status_code, headers = api_instance.get_monthly_usage_attribution_with_http_info(start_month, fields, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonthlyUsageAttributionResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_monthly_usage_attribution_with_http_info: #{e}"
end
```

### Parameters

| Name                   | Type                                        | Description                                                                                                                            | Notes                                 |
| ---------------------- | ------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------- |
| **start_month**        | **Time**                                    | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage beginning in this month. Maximum of 15 months ago. |                                       |
| **fields**             | **MonthlyUsageAttributionSupportedMetrics** | Comma-separated list of usage types to return, or &#x60;\*&#x60; for all usage types.                                                  |                                       |
| **end_month**          | **Time**                                    | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage ending this month.                                 | [optional]                            |
| **sort_direction**     | **UsageSortDirection**                      | The direction to sort by: &#x60;[desc, asc]&#x60;.                                                                                     | [optional][default to &#39;desc&#39;] |
| **sort_name**          | **MonthlyUsageAttributionSupportedMetrics** | The field to sort by.                                                                                                                  | [optional]                            |
| **tag_breakdown_keys** | **String**                                  | Comma separated list of tags used to group usage. If no value is provided the usage will not be broken down by tags.                   | [optional]                            |
| **next_record_id**     | **String**                                  | List following results with a next_record_id provided in the previous query.                                                           | [optional]                            |

### Return type

[**MonthlyUsageAttributionResponse**](MonthlyUsageAttributionResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_specified_daily_custom_reports

> <UsageSpecifiedCustomReportsResponse> get_specified_daily_custom_reports(report_id)

Get specified daily custom reports.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_specified_daily_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
report_id = 'report_id_example' # String | Date of the report in the format `YYYY-MM-DD`.

begin
  # Get specified daily custom reports
  result = api_instance.get_specified_daily_custom_reports(report_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_specified_daily_custom_reports: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_specified_daily_custom_reports_with_http_info: #{e}"
end
```

### Parameters

| Name          | Type       | Description                                              | Notes |
| ------------- | ---------- | -------------------------------------------------------- | ----- |
| **report_id** | **String** | Date of the report in the format &#x60;YYYY-MM-DD&#x60;. |       |

### Return type

[**UsageSpecifiedCustomReportsResponse**](UsageSpecifiedCustomReportsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_specified_monthly_custom_reports

> <UsageSpecifiedCustomReportsResponse> get_specified_monthly_custom_reports(report_id)

Get specified monthly custom reports.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_specified_monthly_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
report_id = 'report_id_example' # String | Date of the report in the format `YYYY-MM-DD`.

begin
  # Get specified monthly custom reports
  result = api_instance.get_specified_monthly_custom_reports(report_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_specified_monthly_custom_reports: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_specified_monthly_custom_reports_with_http_info: #{e}"
end
```

### Parameters

| Name          | Type       | Description                                              | Notes |
| ------------- | ---------- | -------------------------------------------------------- | ----- |
| **report_id** | **String** | Date of the report in the format &#x60;YYYY-MM-DD&#x60;. |       |

### Return type

[**UsageSpecifiedCustomReportsResponse**](UsageSpecifiedCustomReportsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_analyzed_logs

> <UsageAnalyzedLogsResponse> get_usage_analyzed_logs(start_hr, opts)

Get hourly usage for analyzed logs (Security Monitoring).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for analyzed logs
  result = api_instance.get_usage_analyzed_logs(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_analyzed_logs: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_analyzed_logs_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageAnalyzedLogsResponse**](UsageAnalyzedLogsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_attribution

> <UsageAttributionResponse> get_usage_attribution(start_month, fields, opts)

Get Usage Attribution.

### Examples

```ruby
require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_usage_attribution] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_month = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage beginning in this month. Maximum of 15 months ago.
fields = DatadogAPIClient::V1::UsageAttributionSupportedMetrics::CUSTOM_TIMESERIES_USAGE # UsageAttributionSupportedMetrics | Comma-separated list of usage types to return, or `*` for all usage types.
opts = {
  end_month: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage ending this month.
  sort_direction: DatadogAPIClient::V1::UsageSortDirection::DESC, # UsageSortDirection | The direction to sort by: `[desc, asc]`.
  sort_name: DatadogAPIClient::V1::UsageAttributionSort::API_PERCENTAGE, # UsageAttributionSort | The field to sort by.
  include_descendants: true, # Boolean | Include child org usage in the response. Defaults to false.
  offset: 789, # Integer | Number of records to skip before beginning to return.
  limit: 789 # Integer | Maximum number of records to be returned.
}

begin
  # Get Usage Attribution
  result = api_instance.get_usage_attribution(start_month, fields, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_attribution: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_attribution_with_http_info: #{e}"
end
```

### Parameters

| Name                    | Type                                 | Description                                                                                                                            | Notes                                                    |
| ----------------------- | ------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------- |
| **start_month**         | **Time**                             | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage beginning in this month. Maximum of 15 months ago. |                                                          |
| **fields**              | **UsageAttributionSupportedMetrics** | Comma-separated list of usage types to return, or &#x60;\*&#x60; for all usage types.                                                  |                                                          |
| **end_month**           | **Time**                             | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage ending this month.                                 | [optional]                                               |
| **sort_direction**      | **UsageSortDirection**               | The direction to sort by: &#x60;[desc, asc]&#x60;.                                                                                     | [optional][default to &#39;desc&#39;]                    |
| **sort_name**           | **UsageAttributionSort**             | The field to sort by.                                                                                                                  | [optional][default to &#39;custom_timeseries_usage&#39;] |
| **include_descendants** | **Boolean**                          | Include child org usage in the response. Defaults to false.                                                                            | [optional][default to false]                             |
| **offset**              | **Integer**                          | Number of records to skip before beginning to return.                                                                                  | [optional][default to 0]                                 |
| **limit**               | **Integer**                          | Maximum number of records to be returned.                                                                                              | [optional][default to 5000]                              |

### Return type

[**UsageAttributionResponse**](UsageAttributionResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_audit_logs

> <UsageAuditLogsResponse> get_usage_audit_logs(start_hr, opts)

Get hourly usage for audit logs.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for audit logs
  result = api_instance.get_usage_audit_logs(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_audit_logs: #{e}"
end
```

#### Using the get_usage_audit_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageAuditLogsResponse>, Integer, Hash)> get_usage_audit_logs_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for audit logs
  data, status_code, headers = api_instance.get_usage_audit_logs_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageAuditLogsResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_audit_logs_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageAuditLogsResponse**](UsageAuditLogsResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_billable_summary

> <UsageBillableSummaryResponse> get_usage_billable_summary(opts)

Get billable usage across your account.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  month: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage starting this month.
}

begin
  # Get billable usage across your account
  result = api_instance.get_usage_billable_summary(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_billable_summary: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_billable_summary_with_http_info: #{e}"
end
```

### Parameters

| Name      | Type     | Description                                                                                              | Notes      |
| --------- | -------- | -------------------------------------------------------------------------------------------------------- | ---------- |
| **month** | **Time** | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage starting this month. | [optional] |

### Return type

[**UsageBillableSummaryResponse**](UsageBillableSummaryResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_cloud_security_posture_management

> <UsageCloudSecurityPostureManagementResponse> get_usage_cloud_security_posture_management(start_hr, opts)

Get hourly usage for Cloud Security Posture Management (CSPM).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for CSPM
  result = api_instance.get_usage_cloud_security_posture_management(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_cloud_security_posture_management: #{e}"
end
```

#### Using the get_usage_cloud_security_posture_management_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageCloudSecurityPostureManagementResponse>, Integer, Hash)> get_usage_cloud_security_posture_management_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for CSPM
  data, status_code, headers = api_instance.get_usage_cloud_security_posture_management_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageCloudSecurityPostureManagementResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_cloud_security_posture_management_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageCloudSecurityPostureManagementResponse**](UsageCloudSecurityPostureManagementResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_cws

> <UsageCWSResponse> get_usage_cws(start_hr, opts)

Get hourly usage for Cloud Workload Security.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for Cloud Workload Security
  result = api_instance.get_usage_cws(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_cws: #{e}"
end
```

#### Using the get_usage_cws_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageCWSResponse>, Integer, Hash)> get_usage_cws_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Cloud Workload Security
  data, status_code, headers = api_instance.get_usage_cws_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageCWSResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_cws_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageCWSResponse**](UsageCWSResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_dbm

> <UsageDBMResponse> get_usage_dbm(start_hr, opts)

Get hourly usage for Database Monitoring

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for Database Monitoring
  result = api_instance.get_usage_dbm(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_dbm: #{e}"
end
```

#### Using the get_usage_dbm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageDBMResponse>, Integer, Hash)> get_usage_dbm_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Database Monitoring
  data, status_code, headers = api_instance.get_usage_dbm_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageDBMResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_dbm_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageDBMResponse**](UsageDBMResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_fargate

> <UsageFargateResponse> get_usage_fargate(start_hr, opts)

Get hourly usage for [Fargate](https://docs.datadoghq.com/integrations/ecs_fargate/).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Fargate
  result = api_instance.get_usage_fargate(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_fargate: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_fargate_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageFargateResponse**](UsageFargateResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_hosts

> <UsageHostsResponse> get_usage_hosts(start_hr, opts)

Get hourly usage for hosts and containers.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for hosts and containers
  result = api_instance.get_usage_hosts(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_hosts: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageHostsResponse**](UsageHostsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_indexed_spans

> <UsageIndexedSpansResponse> get_usage_indexed_spans(start_hr, opts)

Get hourly usage for indexed spans.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for indexed spans
  result = api_instance.get_usage_indexed_spans(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_indexed_spans: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_indexed_spans_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageIndexedSpansResponse**](UsageIndexedSpansResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_internet_of_things

> <UsageIoTResponse> get_usage_internet_of_things(start_hr, opts)

Get hourly usage for IoT.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for IoT
  result = api_instance.get_usage_internet_of_things(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_internet_of_things: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_internet_of_things_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageIoTResponse**](UsageIoTResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_lambda

> <UsageLambdaResponse> get_usage_lambda(start_hr, opts)

Get hourly usage for lambda.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Lambda
  result = api_instance.get_usage_lambda(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_lambda: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_lambda_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageLambdaResponse**](UsageLambdaResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_logs

> <UsageLogsResponse> get_usage_logs(start_hr, opts)

Get hourly usage for logs.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Logs
  result = api_instance.get_usage_logs(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_logs: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_logs_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageLogsResponse**](UsageLogsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_logs_by_index

> <UsageLogsByIndexResponse> get_usage_logs_by_index(start_hr, opts)

Get hourly usage for logs by index.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
  index_name: ['inner_example'] # Array<String> | Comma-separated list of log index names.
}

begin
  # Get hourly usage for Logs by Index
  result = api_instance.get_usage_logs_by_index(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_logs_by_index: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_logs_by_index_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type                    | Description                                                                                               | Notes      |
| -------------- | ----------------------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr**   | **Time**                | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**     | **Time**                | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |
| **index_name** | **Array&lt;String&gt;** | Comma-separated list of log index names.                                                                  | [optional] |

### Return type

[**UsageLogsByIndexResponse**](UsageLogsByIndexResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_logs_by_retention

> <UsageLogsByRetentionResponse> get_usage_logs_by_retention(start_hr, opts)

Get hourly usage for indexed logs by retention period.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly logs usage by retention
  result = api_instance.get_usage_logs_by_retention(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_logs_by_retention: #{e}"
end
```

#### Using the get_usage_logs_by_retention_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageLogsByRetentionResponse>, Integer, Hash)> get_usage_logs_by_retention_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly logs usage by retention
  data, status_code, headers = api_instance.get_usage_logs_by_retention_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageLogsByRetentionResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_logs_by_retention_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageLogsByRetentionResponse**](UsageLogsByRetentionResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_network_flows

> <UsageNetworkFlowsResponse> get_usage_network_flows(start_hr, opts)

Get hourly usage for network flows.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for Network Flows
  result = api_instance.get_usage_network_flows(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_network_flows: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_network_flows_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageNetworkFlowsResponse**](UsageNetworkFlowsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_network_hosts

> <UsageNetworkHostsResponse> get_usage_network_hosts(start_hr, opts)

Get hourly usage for network hosts.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Network Hosts
  result = api_instance.get_usage_network_hosts(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_network_hosts: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_network_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageNetworkHostsResponse**](UsageNetworkHostsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_profiling

> <UsageProfilingResponse> get_usage_profiling(start_hr, opts)

Get hourly usage for profiled hosts.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for profiled hosts
  result = api_instance.get_usage_profiling(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_profiling: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_profiling_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageProfilingResponse**](UsageProfilingResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_rum_sessions

> <UsageRumSessionsResponse> get_usage_rum_sessions(start_hr, opts)

Get hourly usage for [RUM](https://docs.datadoghq.com/real_user_monitoring/) Sessions.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
  type: 'type_example' # String | RUM type: `[browser, mobile]`. Defaults to `browser`.
}

begin
  # Get hourly usage for RUM Sessions
  result = api_instance.get_usage_rum_sessions(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_rum_sessions: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_rum_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type       | Description                                                                                               | Notes      |
| ------------ | ---------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time**   | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time**   | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |
| **type**     | **String** | RUM type: &#x60;[browser, mobile]&#x60;. Defaults to &#x60;browser&#x60;.                                 | [optional] |

### Return type

[**UsageRumSessionsResponse**](UsageRumSessionsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_rum_units

> <UsageRumUnitsResponse> get_usage_rum_units(start_hr, opts)

Get hourly usage for [RUM](https://docs.datadoghq.com/real_user_monitoring/) Units.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for RUM Units
  result = api_instance.get_usage_rum_units(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_rum_units: #{e}"
end
```

#### Using the get_usage_rum_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageRumUnitsResponse>, Integer, Hash)> get_usage_rum_units_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for RUM Units
  data, status_code, headers = api_instance.get_usage_rum_units_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageRumUnitsResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_rum_units_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageRumUnitsResponse**](UsageRumUnitsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_sds

> <UsageSDSResponse> get_usage_sds(start_hr, opts)

Get hourly usage for Sensitive Data Scanner.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for Sensitive Data Scanner
  result = api_instance.get_usage_sds(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_sds: #{e}"
end
```

#### Using the get_usage_sds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSDSResponse>, Integer, Hash)> get_usage_sds_with_http_info(start_hr, opts)

```ruby
begin
  # Get hourly usage for Sensitive Data Scanner
  data, status_code, headers = api_instance.get_usage_sds_with_http_info(start_hr, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSDSResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_sds_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSDSResponse**](UsageSDSResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_snmp

> <UsageSNMPResponse> get_usage_snmp(start_hr, opts)

Get hourly usage for SNMP devices.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for SNMP devices
  result = api_instance.get_usage_snmp(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_snmp: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_snmp_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                                           | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: &#x60;[YYYY-MM-DDThh]&#x60; for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSNMPResponse**](UsageSNMPResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_summary

> <UsageSummaryResponse> get_usage_summary(start_month, opts)

Get usage across your multi-org account. You must have the multi-org feature enabled.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_month = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage beginning in this month. Maximum of 15 months ago.
opts = {
  end_month: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage ending this month.
  include_org_details: true # Boolean | Include usage summaries for each sub-org.
}

begin
  # Get usage across your multi-org account
  result = api_instance.get_usage_summary(start_month, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_summary: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_summary_with_http_info: #{e}"
end
```

### Parameters

| Name                    | Type        | Description                                                                                                                            | Notes      |
| ----------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start_month**         | **Time**    | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage beginning in this month. Maximum of 15 months ago. |            |
| **end_month**           | **Time**    | Datetime in ISO-8601 format, UTC, precise to month: &#x60;[YYYY-MM]&#x60; for usage ending this month.                                 | [optional] |
| **include_org_details** | **Boolean** | Include usage summaries for each sub-org.                                                                                              | [optional] |

### Return type

[**UsageSummaryResponse**](UsageSummaryResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_synthetics

> <UsageSyntheticsResponse> get_usage_synthetics(start_hr, opts)

Get hourly usage for [Synthetics checks](https://docs.datadoghq.com/synthetics/).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Synthetics Checks
  result = api_instance.get_usage_synthetics(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_synthetics: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_synthetics_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSyntheticsResponse**](UsageSyntheticsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_synthetics_api

> <UsageSyntheticsAPIResponse> get_usage_synthetics_api(start_hr, opts)

Get hourly usage for [synthetics API checks](https://docs.datadoghq.com/synthetics/).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Synthetics API Checks
  result = api_instance.get_usage_synthetics_api(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_synthetics_api: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_synthetics_api_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSyntheticsAPIResponse**](UsageSyntheticsAPIResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_synthetics_browser

> <UsageSyntheticsBrowserResponse> get_usage_synthetics_browser(start_hr, opts)

Get hourly usage for synthetics browser checks.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for Synthetics Browser Checks
  result = api_instance.get_usage_synthetics_browser(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_synthetics_browser: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_synthetics_browser_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageSyntheticsBrowserResponse**](UsageSyntheticsBrowserResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_timeseries

> <UsageTimeseriesResponse> get_usage_timeseries(start_hr, opts)

Get hourly usage for [custom metrics](https://docs.datadoghq.com/developers/metrics/custom_metrics/).

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.
opts = {
  end_hr: Time.parse('2013-10-20T19:20:30+01:00') # Time | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour.
}

begin
  # Get hourly usage for custom metrics
  result = api_instance.get_usage_timeseries(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_timeseries: #{e}"
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
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_timeseries_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type     | Description                                                                                               | Notes      |
| ------------ | -------- | --------------------------------------------------------------------------------------------------------- | ---------- |
| **start_hr** | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage beginning at this hour.      |            |
| **end_hr**   | **Time** | Datetime in ISO-8601 format, UTC, precise to hour: [YYYY-MM-DDThh] for usage ending **before** this hour. | [optional] |

### Return type

[**UsageTimeseriesResponse**](UsageTimeseriesResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

## get_usage_top_avg_metrics

> <UsageTopAvgMetricsResponse> get_usage_top_avg_metrics(opts)

Get all [custom metrics](https://docs.datadoghq.com/developers/metrics/custom_metrics/) by hourly average. Use the month parameter to get a month-to-date data resolution or use the day parameter to get a daily resolution. One of the two is required, and only one of the two is allowed.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  month: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to month: [YYYY-MM] for usage beginning at this hour. (Either month or day should be specified, but not both)
  day: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Datetime in ISO-8601 format, UTC, precise to day: [YYYY-MM-DD] for usage beginning at this hour. (Either month or day should be specified, but not both)
  names: ['inner_example'], # Array<String> | Comma-separated list of metric names.
  limit: 56, # Integer | Maximum number of results to return (between 1 and 5000) - defaults to 500 results if limit not specified.
  next_record_id: 'next_record_id_example' # String | List following results with a next_record_id provided in the previous query.
}

begin
  # Get all custom metrics by hourly average
  result = api_instance.get_usage_top_avg_metrics(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_top_avg_metrics: #{e}"
end
```

#### Using the get_usage_top_avg_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageTopAvgMetricsResponse>, Integer, Hash)> get_usage_top_avg_metrics_with_http_info(opts)

```ruby
begin
  # Get all custom metrics by hourly average
  data, status_code, headers = api_instance.get_usage_top_avg_metrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageTopAvgMetricsResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_top_avg_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name               | Type                    | Description                                                                                                                                              | Notes                      |
| ------------------ | ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------- |
| **month**          | **Time**                | Datetime in ISO-8601 format, UTC, precise to month: [YYYY-MM] for usage beginning at this hour. (Either month or day should be specified, but not both)  | [optional]                 |
| **day**            | **Time**                | Datetime in ISO-8601 format, UTC, precise to day: [YYYY-MM-DD] for usage beginning at this hour. (Either month or day should be specified, but not both) | [optional]                 |
| **names**          | **Array&lt;String&gt;** | Comma-separated list of metric names.                                                                                                                    | [optional]                 |
| **limit**          | **Integer**             | Maximum number of results to return (between 1 and 5000) - defaults to 500 results if limit not specified.                                               | [optional][default to 500] |
| **next_record_id** | **String**              | List following results with a next_record_id provided in the previous query.                                                                             | [optional]                 |

### Return type

[**UsageTopAvgMetricsResponse**](UsageTopAvgMetricsResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;datetime-format=rfc3339

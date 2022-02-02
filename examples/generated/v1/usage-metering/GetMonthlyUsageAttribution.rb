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

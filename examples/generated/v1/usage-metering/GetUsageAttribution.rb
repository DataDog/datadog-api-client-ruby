require "datadog_api_client"

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_usage_attribution] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_month = Time.parse("2013-10-20T19:20:30+01:00") # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage beginning in this month. Maximum of 15 months ago.
fields = DatadogAPIClient::V1::UsageAttributionSupportedMetrics::CUSTOM_TIMESERIES_USAGE # UsageAttributionSupportedMetrics | Comma-separated list of usage types to return, or `*` for all usage types.
opts = {
  end_month: Time.parse("2013-10-20T19:20:30+01:00"), # Time | Datetime in ISO-8601 format, UTC, precise to month: `[YYYY-MM]` for usage ending this month.
  sort_direction: DatadogAPIClient::V1::UsageSortDirection::DESC, # UsageSortDirection | The direction to sort by: `[desc, asc]`.
  sort_name: DatadogAPIClient::V1::UsageAttributionSort::API_PERCENTAGE, # UsageAttributionSort | The field to sort by.
  include_descendants: true, # Boolean | Include child org usage in the response. Defaults to false.
  offset: 789, # Integer | Number of records to skip before beginning to return.
  limit: 789, # Integer | Maximum number of records to be returned.
}

begin
  # Get Usage Attribution
  result = api_instance.get_usage_attribution(start_month, fields, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_attribution: #{e}"
end

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

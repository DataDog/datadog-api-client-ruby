require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  month: Time.parse("2013-10-20T19:20:30+01:00"), # Time | Datetime in ISO-8601 format, UTC, precise to month: [YYYY-MM] for usage beginning at this hour. (Either month or day should be specified, but not both)
  day: Time.parse("2013-10-20T19:20:30+01:00"), # Time | Datetime in ISO-8601 format, UTC, precise to day: [YYYY-MM-DD] for usage beginning at this hour. (Either month or day should be specified, but not both)
  names: ["inner_example"], # Array<String> | Comma-separated list of metric names.
  limit: 56, # Integer | Maximum number of results to return (between 1 and 5000) - defaults to 500 results if limit not specified.
  next_record_id: "next_record_id_example", # String | List following results with a next_record_id provided in the previous query.
}

begin
  # Get all custom metrics by hourly average
  result = api_instance.get_usage_top_avg_metrics(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_usage_top_avg_metrics: #{e}"
end

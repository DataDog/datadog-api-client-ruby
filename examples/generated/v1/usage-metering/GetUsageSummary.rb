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

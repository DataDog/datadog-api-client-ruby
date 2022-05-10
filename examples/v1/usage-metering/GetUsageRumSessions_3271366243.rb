# Get mobile hourly usage for RUM Sessions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  end_hr: (Time.now + -3 * 86400),
  type: "mobile",
}
p api_instance.get_usage_rum_sessions((Time.now + -5 * 86400), opts)

# Get hourly usage for Logs by Index returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  end_hr: (Time.now + -3 * 86400),
}
p api_instance.get_usage_logs_by_index((Time.now + -5 * 86400), opts)

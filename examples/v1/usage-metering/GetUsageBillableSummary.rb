# Get billable usage across your account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  month: (Time.now + -3 * 86400),
}
p api_instance.get_usage_billable_summary(opts)

# Get hourly usage for CI visibility returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  end_hr: (Time.now + -3 * 86400),
}
p api_instance.get_usage_ci_app((Time.now + -5 * 86400), opts)

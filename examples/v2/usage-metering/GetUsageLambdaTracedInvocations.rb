# Get hourly usage for Lambda traced invocations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  end_hr: (Time.now + -3 * 86400),
}
p api_instance.get_usage_lambda_traced_invocations((Time.now + -5 * 86400), opts)

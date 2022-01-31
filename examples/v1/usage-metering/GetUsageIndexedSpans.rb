# Get hourly usage for indexed spans returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  end_hr: (Time.now + -3 * 86400),
}
p api_instance.get_usage_indexed_spans((Time.now + -5 * 86400), opts)

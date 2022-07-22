# Get hourly usage for Observability Pipelines returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  end_hr: (Time.now + -3 * 86400),
}
p api_instance.get_usage_observability_pipelines((Time.now + -5 * 86400), opts)

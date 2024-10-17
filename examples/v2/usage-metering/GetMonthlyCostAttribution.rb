# Get Monthly Cost Attribution returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_monthly_cost_attribution".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_monthly_cost_attribution((Time.now + -5 * 86400), (Time.now + -3 * 86400), "infra_host_total_cost")

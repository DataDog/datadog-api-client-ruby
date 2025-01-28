# Get Monthly Cost Attribution returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  end_month: (Time.now + -3 * 86400),
}
p api_instance.get_monthly_cost_attribution((Time.now + -5 * 86400), "infra_host_total_cost", opts)

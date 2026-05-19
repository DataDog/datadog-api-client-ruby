# Get usage stats for a dashboard returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_dashboard_usage".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardsAPI.new

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]
p api_instance.get_dashboard_usage(DASHBOARD_ID)

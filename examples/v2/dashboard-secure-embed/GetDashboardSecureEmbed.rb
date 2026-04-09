# Get a secure embed for a dashboard returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_dashboard_secure_embed".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardSecureEmbedAPI.new
p api_instance.get_dashboard_secure_embed("dashboard_id", "token")

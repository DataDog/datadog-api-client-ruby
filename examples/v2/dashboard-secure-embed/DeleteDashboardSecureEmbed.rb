# Delete a secure embed for a dashboard returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_dashboard_secure_embed".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardSecureEmbedAPI.new
api_instance.delete_dashboard_secure_embed("dashboard_id", "token")

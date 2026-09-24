# Create a dashboard list returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new

body = DatadogAPIClient::V1::DashboardList.new({
  name: "Example-Dashboard-List",
})
p api_instance.create_dashboard_list(body)

# Get a shared dashboard returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "shared_dashboard" in the system
SHARED_DASHBOARD_TOKEN = ENV["SHARED_DASHBOARD_TOKEN"]
p api_instance.get_public_dashboard(SHARED_DASHBOARD_TOKEN)

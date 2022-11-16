# Get Dashboard Reports for a Dashboard returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardReportsAPI.new

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]
p api_instance.get_dashboard_report_configs_list(DASHBOARD_ID)

# Delete a Dashboard Report returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardReportsAPI.new

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]

# there is a valid "dashboard_report" in the system
DASHBOARD_REPORT_DATA_ID = ENV["DASHBOARD_REPORT_DATA_ID"]
api_instance.delete_dashboard_report_config(DASHBOARD_ID, DASHBOARD_REPORT_DATA_ID)

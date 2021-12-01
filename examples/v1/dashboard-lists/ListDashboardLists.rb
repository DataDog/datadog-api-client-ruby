# Get all dashboard lists returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new
p api_instance.list_dashboard_lists()

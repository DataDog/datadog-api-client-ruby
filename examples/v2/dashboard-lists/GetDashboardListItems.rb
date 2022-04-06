# Get items of a Dashboard List returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
p api_instance.get_dashboard_list_items(9223372036854775807)

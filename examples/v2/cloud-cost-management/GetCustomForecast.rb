# Get a budget's custom forecast returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_custom_forecast("budget_id")

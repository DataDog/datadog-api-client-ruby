# Delete a budget's custom forecast returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_custom_forecast("budget_id")

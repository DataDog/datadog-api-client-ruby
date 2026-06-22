# Delete a budget's custom forecast returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_custom_forecast".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_custom_forecast("budget_id")

# Delete a schedule returns "Schedule successfully deleted." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_fleet_schedule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
api_instance.delete_fleet_schedule("id")

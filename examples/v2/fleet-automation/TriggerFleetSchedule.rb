# Trigger a schedule deployment returns "CREATED - Deployment successfully created and started." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.trigger_fleet_schedule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
p api_instance.trigger_fleet_schedule("id")

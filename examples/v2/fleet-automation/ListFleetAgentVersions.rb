# List all available Agent versions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_fleet_agent_versions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
p api_instance.list_fleet_agent_versions()

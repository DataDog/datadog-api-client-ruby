# Get detailed information about an agent returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_fleet_agent_info".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
p api_instance.get_fleet_agent_info("agent_key")

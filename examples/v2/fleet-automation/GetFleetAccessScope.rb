# Get a fleet access scope returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_fleet_access_scope".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

# there is a valid "fleet_access_scope" in the system
FLEET_ACCESS_SCOPE_ID = ENV["FLEET_ACCESS_SCOPE_ID"]
p api_instance.get_fleet_access_scope(FLEET_ACCESS_SCOPE_ID)

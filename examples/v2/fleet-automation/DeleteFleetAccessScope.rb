# Delete a fleet access scope returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_fleet_access_scope".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

# there is a valid "fleet_access_scope" in the system
FLEET_ACCESS_SCOPE_ID = ENV["FLEET_ACCESS_SCOPE_ID"]
api_instance.delete_fleet_access_scope(FLEET_ACCESS_SCOPE_ID)

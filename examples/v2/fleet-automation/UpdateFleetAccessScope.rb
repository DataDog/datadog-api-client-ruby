# Replace a fleet access scope returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_fleet_access_scope".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

# there is a valid "fleet_access_scope" in the system
FLEET_ACCESS_SCOPE_ID = ENV["FLEET_ACCESS_SCOPE_ID"]

body = DatadogAPIClient::V2::FleetAccessScopeWriteRequest.new({
  data: DatadogAPIClient::V2::FleetAccessScopeWrite.new({
    type: DatadogAPIClient::V2::FleetAccessScopeResourceType::ACCESS_SCOPE,
    attributes: DatadogAPIClient::V2::FleetAccessScopeAttributes.new({
      description: "Example-Fleet-Automation updated",
      query: "env:staging",
      features: DatadogAPIClient::V2::FleetAccessScopeFeatures.new({
        install: false,
        upgrade: false,
        configure: true,
      }),
    }),
  }),
})
p api_instance.update_fleet_access_scope(FLEET_ACCESS_SCOPE_ID, body)

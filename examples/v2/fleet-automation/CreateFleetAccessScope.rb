# Create a fleet access scope returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_fleet_access_scope".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

body = DatadogAPIClient::V2::FleetAccessScopeWriteRequest.new({
  data: DatadogAPIClient::V2::FleetAccessScopeWrite.new({
    type: DatadogAPIClient::V2::FleetAccessScopeResourceType::ACCESS_SCOPE,
    attributes: DatadogAPIClient::V2::FleetAccessScopeAttributes.new({
      description: "Example-Fleet-Automation",
      query: "env:prod",
      features: DatadogAPIClient::V2::FleetAccessScopeFeatures.new({
        install: false,
        upgrade: true,
        configure: false,
      }),
    }),
  }),
})
p api_instance.create_fleet_access_scope(body)

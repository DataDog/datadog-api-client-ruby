# Upgrade hosts returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_fleet_deployment_upgrade".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

body = DatadogAPIClient::V2::FleetDeploymentPackageUpgradeCreateRequest.new({
  data: DatadogAPIClient::V2::FleetDeploymentPackageUpgradeCreate.new({
    attributes: DatadogAPIClient::V2::FleetDeploymentPackageUpgradeAttributes.new({
      filter_query: "env:prod AND service:web",
      target_packages: [
        DatadogAPIClient::V2::FleetDeploymentPackage.new({
          name: "datadog-agent",
          version: "7.52.0",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::FleetDeploymentResourceType::DEPLOYMENT,
  }),
})
p api_instance.create_fleet_deployment_upgrade(body)

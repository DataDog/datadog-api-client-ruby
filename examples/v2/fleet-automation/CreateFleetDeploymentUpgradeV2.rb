# Upgrade hosts returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

body = DatadogAPIClient::V2::FleetDeploymentPackageUpgradeV2CreateRequest.new({
  data: DatadogAPIClient::V2::FleetDeploymentPackageUpgradeV2Create.new({
    attributes: DatadogAPIClient::V2::FleetDeploymentPackageUpgradeV2Attributes.new({
      filter_query: "env:prod AND service:example-fleet-automation",
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
p api_instance.create_fleet_deployment_upgrade_v2(body)

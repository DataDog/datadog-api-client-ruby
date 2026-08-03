# Create a configuration deployment returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

body = DatadogAPIClient::V2::FleetDeploymentConfigureV2CreateRequest.new({
  data: DatadogAPIClient::V2::FleetDeploymentConfigureV2Create.new({
    attributes: DatadogAPIClient::V2::FleetDeploymentConfigureV2Attributes.new({
      config_operations: [
        DatadogAPIClient::V2::FleetDeploymentOperation.new({
          file_op: DatadogAPIClient::V2::FleetDeploymentFileOp::MERGE_PATCH,
          file_path: "/datadog.yaml",
          patch: {
            "log_level": "info",
          },
        }),
      ],
      dry_run: true,
      filter_query: "env:prod AND service:example-fleet-automation",
    }),
    type: DatadogAPIClient::V2::FleetDeploymentResourceType::DEPLOYMENT,
  }),
})
p api_instance.create_fleet_deployment_configure_v2(body)

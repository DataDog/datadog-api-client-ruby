# Create a configuration deployment returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_fleet_deployment_configure".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

body = DatadogAPIClient::V2::FleetDeploymentConfigureCreateRequest.new({
  data: DatadogAPIClient::V2::FleetDeploymentConfigureCreate.new({
    attributes: DatadogAPIClient::V2::FleetDeploymentConfigureAttributes.new({
      config_operations: [
        DatadogAPIClient::V2::FleetDeploymentOperation.new({
          file_op: DatadogAPIClient::V2::FleetDeploymentFileOp::MERGE_PATCH,
          file_path: "/datadog.yaml",
          patch: {
            "apm_config": "{'enabled': True}", "log_level": "debug", "logs_enabled": "True",
          },
        }),
      ],
      filter_query: "env:prod AND service:web",
    }),
    type: DatadogAPIClient::V2::FleetDeploymentResourceType::DEPLOYMENT,
  }),
})
p api_instance.create_fleet_deployment_configure(body)

# Create deployment gate returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_deployment_gate".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

body = DatadogAPIClient::V2::CreateDeploymentGateParams.new({
  data: DatadogAPIClient::V2::CreateDeploymentGateParamsData.new({
    attributes: DatadogAPIClient::V2::CreateDeploymentGateParamsDataAttributes.new({
      dry_run: false,
      env: "production",
      identifier: "my-gate-1",
      service: "my-service",
    }),
    type: DatadogAPIClient::V2::DeploymentGateDataType::DEPLOYMENT_GATE,
  }),
})
p api_instance.create_deployment_gate(body)

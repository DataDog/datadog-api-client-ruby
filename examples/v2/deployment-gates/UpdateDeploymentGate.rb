# Update deployment gate returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_deployment_gate".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gate" in the system
DEPLOYMENT_GATE_DATA_ID = ENV["DEPLOYMENT_GATE_DATA_ID"]

body = DatadogAPIClient::V2::UpdateDeploymentGateParams.new({
  data: DatadogAPIClient::V2::UpdateDeploymentGateParamsData.new({
    attributes: DatadogAPIClient::V2::UpdateDeploymentGateParamsDataAttributes.new({
      dry_run: false,
    }),
    id: "12345678-1234-1234-1234-123456789012",
    type: DatadogAPIClient::V2::DeploymentGateDataType::DEPLOYMENT_GATE,
  }),
})
p api_instance.update_deployment_gate(DEPLOYMENT_GATE_DATA_ID, body)

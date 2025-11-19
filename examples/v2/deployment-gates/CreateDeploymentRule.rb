# Create deployment rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_deployment_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gate" in the system
DEPLOYMENT_GATE_DATA_ID = ENV["DEPLOYMENT_GATE_DATA_ID"]

body = DatadogAPIClient::V2::CreateDeploymentRuleParams.new({
  data: DatadogAPIClient::V2::CreateDeploymentRuleParamsData.new({
    attributes: DatadogAPIClient::V2::CreateDeploymentRuleParamsDataAttributes.new({
      dry_run: false,
      name: "My deployment rule",
      options: DatadogAPIClient::V2::DeploymentRuleOptionsFaultyDeploymentDetection.new({
        excluded_resources: [],
      }),
      type: "faulty_deployment_detection",
    }),
    type: DatadogAPIClient::V2::DeploymentRuleDataType::DEPLOYMENT_RULE,
  }),
})
p api_instance.create_deployment_rule(DEPLOYMENT_GATE_DATA_ID, body)

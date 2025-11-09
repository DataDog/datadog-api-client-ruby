# Update deployment rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_deployment_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gate" in the system
DEPLOYMENT_GATE_DATA_ID = ENV["DEPLOYMENT_GATE_DATA_ID"]

# there is a valid "deployment_rule" in the system
DEPLOYMENT_RULE_DATA_ID = ENV["DEPLOYMENT_RULE_DATA_ID"]

body = DatadogAPIClient::V2::UpdateDeploymentRuleParams.new({
  data: DatadogAPIClient::V2::UpdateDeploymentRuleParamsData.new({
    attributes: DatadogAPIClient::V2::UpdateDeploymentRuleParamsDataAttributes.new({
      dry_run: false,
      name: "Updated deployment rule",
      options: DatadogAPIClient::V2::DeploymentRuleOptionsFaultyDeploymentDetection.new({
        excluded_resources: [],
      }),
    }),
    type: DatadogAPIClient::V2::DeploymentRuleDataType::DEPLOYMENT_RULE,
  }),
})
p api_instance.update_deployment_rule(DEPLOYMENT_GATE_DATA_ID, DEPLOYMENT_RULE_DATA_ID, body)

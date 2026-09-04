# Create monitor deployment rule with query returns "OK" response

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
      name: "Query monitor deployment rule",
      options: DatadogAPIClient::V2::DeploymentRuleOptionsMonitor.new({
        query: "service:transaction-backend env:production",
      }),
      type: "monitor",
    }),
    type: DatadogAPIClient::V2::DeploymentRuleDataType::DEPLOYMENT_RULE,
  }),
})
p api_instance.create_deployment_rule(DEPLOYMENT_GATE_DATA_ID, body)

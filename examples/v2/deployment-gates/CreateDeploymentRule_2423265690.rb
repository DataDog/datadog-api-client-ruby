# Create monitor deployment rule with monitor IDs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_deployment_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gate" in the system
DEPLOYMENT_GATE_DATA_ID = ENV["DEPLOYMENT_GATE_DATA_ID"]

# there is a valid "monitor" in the system
MONITOR_ID = ENV["MONITOR_ID"]

body = DatadogAPIClient::V2::CreateDeploymentRuleParams.new({
  data: DatadogAPIClient::V2::CreateDeploymentRuleParamsData.new({
    attributes: DatadogAPIClient::V2::CreateDeploymentRuleParamsDataAttributes.new({
      dry_run: false,
      name: "Specific monitor deployment rule",
      options: DatadogAPIClient::V2::DeploymentRuleOptionsMonitorIds.new({
        monitor_ids: [
          DatadogAPIClient::V2::DeploymentRuleOptionsMonitorId.new({
            id: "7",
            groups: [],
          }),
        ],
      }),
      type: "monitor",
    }),
    type: DatadogAPIClient::V2::DeploymentRuleDataType::DEPLOYMENT_RULE,
  }),
})
p api_instance.create_deployment_rule(DEPLOYMENT_GATE_DATA_ID, body)

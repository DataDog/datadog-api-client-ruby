# Update an execution policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_execution_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExecutionPolicyAPI.new

# there is a valid "execution_policy" in the system
EXECUTION_POLICY_DATA_ID = ENV["EXECUTION_POLICY_DATA_ID"]

body = DatadogAPIClient::V2::ExecutionPolicyUpdateRequest.new({
  data: DatadogAPIClient::V2::ExecutionPolicyUpdateRequestData.new({
    id: EXECUTION_POLICY_DATA_ID,
    type: DatadogAPIClient::V2::ExecutionPolicyType::EXECUTION_POLICY,
    attributes: DatadogAPIClient::V2::ExecutionPolicyWriteAttributes.new({
      name: "Cassette Execution Policy Updated",
      effect: DatadogAPIClient::V2::ExecutionPolicyEffect::ALLOW,
      action_pattern: DatadogAPIClient::V2::ExecutionPolicyActionPattern.new({
        integration: DatadogAPIClient::V2::ExecutionPolicyIntegration::INTEGRATION_SCRIPT,
        action_fqns: [
          "com.datadoghq.script.*",
        ],
      }),
    }),
  }),
})
p api_instance.update_execution_policy(EXECUTION_POLICY_DATA_ID, body)

# Create a Slack execution policy with scope and targets returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_execution_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExecutionPolicyAPI.new

body = DatadogAPIClient::V2::ExecutionPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::ExecutionPolicyCreateRequestData.new({
    type: DatadogAPIClient::V2::ExecutionPolicyType::EXECUTION_POLICY,
    attributes: DatadogAPIClient::V2::ExecutionPolicyWriteAttributes.new({
      name: "Cassette Execution Policy exampleexecutionpolicy",
      effect: DatadogAPIClient::V2::ExecutionPolicyEffect::ALLOW,
      action_pattern: DatadogAPIClient::V2::ExecutionPolicyActionPattern.new({
        integration: DatadogAPIClient::V2::ExecutionPolicyIntegration::INTEGRATION_SLACK,
        action_fqns: [
          "com.datadoghq.slack.*",
        ],
      }),
      scope: DatadogAPIClient::V2::ExecutionPolicyScope.new({
        slack: DatadogAPIClient::V2::ExecutionPolicySlackScope.new({
          rules: [
            DatadogAPIClient::V2::ExecutionPolicySlackScopeRule.new({
              channel_name_selectors: [
                "incident-*",
              ],
            }),
          ],
        }),
      }),
      targets: [
        DatadogAPIClient::V2::ExecutionPolicyTarget.new({
          name: "Incident workspace",
          agent_tags: [
            "slack_workspace_id:T01234567",
          ],
        }),
      ],
    }),
  }),
})
p api_instance.create_execution_policy(body)

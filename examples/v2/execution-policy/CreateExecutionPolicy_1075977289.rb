# Create an execution policy with scope and targets returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
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
        integration: DatadogAPIClient::V2::ExecutionPolicyIntegration::INTEGRATION_SCRIPT,
        action_fqns: [
          "com.datadoghq.script.*",
        ],
      }),
      scope: DatadogAPIClient::V2::ExecutionPolicyScope.new({
        scripts: DatadogAPIClient::V2::ExecutionPolicyScriptScope.new({
          rules: [
            DatadogAPIClient::V2::ExecutionPolicyScriptScopeRule.new({
              target_script_names: [
                "restart_service.sh",
              ],
            }),
          ],
        }),
      }),
      targets: [
        DatadogAPIClient::V2::ExecutionPolicyTarget.new({
          name: "Production hosts",
          agent_tags: [
            "env:prod",
          ],
        }),
      ],
    }),
  }),
})
p api_instance.create_execution_policy(body)

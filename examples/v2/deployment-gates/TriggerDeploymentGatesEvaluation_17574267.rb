# Trigger a deployment gates evaluation with an inline bits deployment analysis rule returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.trigger_deployment_gates_evaluation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gate" in the system
DEPLOYMENT_GATE_DATA_ATTRIBUTES_IDENTIFIER = ENV["DEPLOYMENT_GATE_DATA_ATTRIBUTES_IDENTIFIER"]

body = DatadogAPIClient::V2::DeploymentGatesEvaluationRequest.new({
  data: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestData.new({
    attributes: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestAttributes.new({
      configuration: DatadogAPIClient::V2::DeploymentGatesEvaluationConfiguration.new({
        dry_run: false,
        rules: [
          DatadogAPIClient::V2::DeploymentGatesBitsDeploymentAnalysisRule.new({
            dry_run: false,
            name: "bits deployment analysis",
            options: DatadogAPIClient::V2::DeploymentGatesBitsDeploymentAnalysisRuleOptions.new({
              duration: 900,
            }),
            type: DatadogAPIClient::V2::DeploymentGatesBitsDeploymentAnalysisRuleType::BITS_DEPLOYMENT_ANALYSIS,
          }),
        ],
      }),
      env: "production",
      identifier: DEPLOYMENT_GATE_DATA_ATTRIBUTES_IDENTIFIER,
      service: "my-service",
    }),
    type: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestDataType::DEPLOYMENT_GATES_EVALUATION_REQUEST,
  }),
})
p api_instance.trigger_deployment_gates_evaluation(body)

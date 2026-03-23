# Trigger a deployment gates evaluation returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.trigger_deployment_gates_evaluation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gate" in the system
DEPLOYMENT_GATE_DATA_ATTRIBUTES_IDENTIFIER = ENV["DEPLOYMENT_GATE_DATA_ATTRIBUTES_IDENTIFIER"]

body = DatadogAPIClient::V2::DeploymentGatesEvaluationRequest.new({
  data: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestData.new({
    attributes: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestAttributes.new({
      env: "production",
      identifier: DEPLOYMENT_GATE_DATA_ATTRIBUTES_IDENTIFIER,
      service: "my-service",
    }),
    type: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestDataType::DEPLOYMENT_GATES_EVALUATION_REQUEST,
  }),
})
p api_instance.trigger_deployment_gates_evaluation(body)

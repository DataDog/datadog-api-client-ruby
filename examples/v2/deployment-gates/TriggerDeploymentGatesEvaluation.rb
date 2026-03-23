# Trigger a deployment gate evaluation returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.trigger_deployment_gates_evaluation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

body = DatadogAPIClient::V2::DeploymentGatesEvaluationRequest.new({
  data: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestData.new({
    attributes: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestAttributes.new({
      env: "staging",
      identifier: "pre-deploy",
      primary_tag: "region:us-east-1",
      service: "transaction-backend",
      version: "v1.2.3",
    }),
    type: DatadogAPIClient::V2::DeploymentGatesEvaluationRequestDataType::DEPLOYMENT_GATES_EVALUATION_REQUEST,
  }),
})
p api_instance.trigger_deployment_gates_evaluation(body)

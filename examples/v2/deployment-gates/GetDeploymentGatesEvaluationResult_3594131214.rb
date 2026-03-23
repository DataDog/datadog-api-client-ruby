# Get a deployment gates evaluation result returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_deployment_gates_evaluation_result".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gates_evaluation" in the system
DEPLOYMENT_GATES_EVALUATION_DATA_ID = ENV["DEPLOYMENT_GATES_EVALUATION_DATA_ID"]
p api_instance.get_deployment_gates_evaluation_result(DEPLOYMENT_GATES_EVALUATION_DATA_ID)

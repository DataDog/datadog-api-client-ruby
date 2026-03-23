# Get a deployment gate evaluation result returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_deployment_gates_evaluation_result".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new
p api_instance.get_deployment_gates_evaluation_result("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")

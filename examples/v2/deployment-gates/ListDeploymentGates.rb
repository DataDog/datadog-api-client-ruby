# Get all deployment gates returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_deployment_gates".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new
p api_instance.list_deployment_gates()

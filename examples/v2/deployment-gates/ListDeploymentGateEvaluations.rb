# List deployment gate evaluations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new
p api_instance.list_deployment_gate_evaluations()

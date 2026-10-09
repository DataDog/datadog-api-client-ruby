# List deployment gate rule evaluations returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_deployment_rule_evaluations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new
api_instance.list_deployment_rule_evaluations_with_pagination() { |item| puts item }

# Get rules for a deployment gate returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_deployment_gate_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gate" in the system
DEPLOYMENT_GATE_DATA_ID = ENV["DEPLOYMENT_GATE_DATA_ID"]
p api_instance.get_deployment_gate_rules(DEPLOYMENT_GATE_DATA_ID)

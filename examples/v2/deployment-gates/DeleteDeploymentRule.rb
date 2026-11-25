# Delete deployment rule returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::DeploymentGatesAPI.new

# there is a valid "deployment_gate" in the system
DEPLOYMENT_GATE_DATA_ID = ENV["DEPLOYMENT_GATE_DATA_ID"]

# there is a valid "deployment_rule" in the system
DEPLOYMENT_RULE_DATA_ID = ENV["DEPLOYMENT_RULE_DATA_ID"]
api_instance.delete_deployment_rule(DEPLOYMENT_GATE_DATA_ID, DEPLOYMENT_RULE_DATA_ID)

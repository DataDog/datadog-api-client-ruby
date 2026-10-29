# Get a rule proposal returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_security_monitoring_rule_proposal".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "rule_proposal" in the system
RULE_PROPOSAL_DATA_ID = ENV["RULE_PROPOSAL_DATA_ID"]
p api_instance.get_security_monitoring_rule_proposal(RULE_PROPOSAL_DATA_ID)

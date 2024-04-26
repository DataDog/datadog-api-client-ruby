# Get a Cloud Workload Security Agent rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

# there is a valid "agent_rule" in the system
AGENT_RULE_DATA_ID = ENV["AGENT_RULE_DATA_ID"]
p api_instance.get_cloud_workload_security_agent_rule(AGENT_RULE_DATA_ID)

# Delete a CSM Threats Agent rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

# there is a valid "agent_rule_rc" in the system
AGENT_RULE_DATA_ID = ENV["AGENT_RULE_DATA_ID"]
api_instance.delete_csm_threats_agent_rule(AGENT_RULE_DATA_ID)

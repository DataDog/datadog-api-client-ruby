# Get a CSM Threats Agent policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

# there is a valid "policy_rc" in the system
POLICY_DATA_ID = ENV["POLICY_DATA_ID"]
p api_instance.get_csm_threats_agent_policy(POLICY_DATA_ID)

# Get On-Call escalation policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "escalation_policy" in the system
ESCALATION_POLICY_DATA_ID = ENV["ESCALATION_POLICY_DATA_ID"]
opts = {
  include: "steps.targets",
}
p api_instance.get_on_call_escalation_policy(ESCALATION_POLICY_DATA_ID, opts)

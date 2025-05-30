# Get team on-call users returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there are valid "routing_rules" in the system
ROUTING_RULES_DATA_ID = ENV["ROUTING_RULES_DATA_ID"]
opts = {
  include: "responders,escalations.responders",
}
p api_instance.get_team_on_call_users(ROUTING_RULES_DATA_ID, opts)

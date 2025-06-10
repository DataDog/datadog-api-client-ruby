# Get On-Call team routing rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]
p api_instance.get_on_call_team_routing_rules(DD_TEAM_DATA_ID)

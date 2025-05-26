# Get On-Call team routing rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new
p api_instance.get_on_call_team_routing_rules("27590dae-47be-4a7d-9abf-8f4e45124020")

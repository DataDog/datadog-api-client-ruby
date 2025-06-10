# Get a list of all escalation policies returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new
p api_instance.list_on_call_escalation_policies()

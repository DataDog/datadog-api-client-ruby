# List available Datadog Agent versions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
p api_instance.list_fleet_agent_versions_v2()

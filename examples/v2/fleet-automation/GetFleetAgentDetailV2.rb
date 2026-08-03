# Get detailed information about an agent returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
p api_instance.get_fleet_agent_detail_v2("a1b2c3d4e5f67890a1b2c3d4e5f67890")

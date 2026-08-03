# List all deployments returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
p api_instance.list_fleet_deployments_v2()

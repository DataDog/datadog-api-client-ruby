# Cancel a deployment returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

# there is a valid "deployment" in the system
DEPLOYMENT_ID = ENV["DEPLOYMENT_ID"]
p api_instance.cancel_fleet_deployment_v2(DEPLOYMENT_ID)

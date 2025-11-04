# Get a deployment by ID returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_fleet_deployment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

# there is a valid "deployment" in the system
DEPLOYMENT_ID = ENV["DEPLOYMENT_ID"]
p api_instance.get_fleet_deployment(DEPLOYMENT_ID)

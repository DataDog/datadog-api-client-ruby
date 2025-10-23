# Cancel a deployment returns "Deployment successfully canceled." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.cancel_fleet_deployment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
api_instance.cancel_fleet_deployment("deployment_id")

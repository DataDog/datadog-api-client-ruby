# List all schedules returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
p api_instance.list_fleet_schedules_v2()

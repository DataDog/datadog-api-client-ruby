# Get a schedule by ID returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

# there is a valid "fleet_schedule" in the system
SCHEDULE_ID = ENV["SCHEDULE_ID"]
p api_instance.get_fleet_schedule_v2(SCHEDULE_ID)

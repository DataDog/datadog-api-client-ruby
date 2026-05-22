# Create an incident Microsoft Teams online meeting returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_ms_teams_online_meeting".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.create_incident_ms_teams_online_meeting("incident_id")

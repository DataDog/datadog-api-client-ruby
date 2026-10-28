# List incident responders includes users and role assignments

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_incident".to_sym] = true
  config.unstable_operations["v2.list_incident_responders".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident_with_commander" in the system
INCIDENT_WITH_COMMANDER_DATA_ID = ENV["INCIDENT_WITH_COMMANDER_DATA_ID"]
opts = {
  include: [
    IncidentResponderRelatedObject::USERS,
    IncidentResponderRelatedObject::ROLE_ASSIGNMENTS,
  ],
}
p api_instance.list_incident_responders(INCIDENT_WITH_COMMANDER_DATA_ID, opts)

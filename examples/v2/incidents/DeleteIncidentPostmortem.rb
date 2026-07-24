# Delete postmortem for an incident returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_postmortem".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "postmortem" in the system
POSTMORTEM_DATA_RELATIONSHIPS_INCIDENT_DATA_ID = ENV["POSTMORTEM_DATA_RELATIONSHIPS_INCIDENT_DATA_ID"]
api_instance.delete_incident_postmortem(POSTMORTEM_DATA_RELATIONSHIPS_INCIDENT_DATA_ID)

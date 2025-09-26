# Delete an incident impact returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_impact".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# the "incident" has an "incident_impact"
INCIDENT_IMPACT_DATA_ID = ENV["INCIDENT_IMPACT_DATA_ID"]
INCIDENT_IMPACT_DATA_RELATIONSHIPS_INCIDENT_DATA_ID = ENV["INCIDENT_IMPACT_DATA_RELATIONSHIPS_INCIDENT_DATA_ID"]
api_instance.delete_incident_impact(INCIDENT_IMPACT_DATA_RELATIONSHIPS_INCIDENT_DATA_ID, INCIDENT_IMPACT_DATA_ID)

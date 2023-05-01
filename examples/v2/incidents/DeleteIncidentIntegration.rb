# Delete an incident integration metadata returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_integration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

# the "incident" has an "incident_integration_metadata"
INCIDENT_INTEGRATION_METADATA_DATA_ID = ENV["INCIDENT_INTEGRATION_METADATA_DATA_ID"]
api_instance.delete_incident_integration(INCIDENT_DATA_ID, INCIDENT_INTEGRATION_METADATA_DATA_ID)
